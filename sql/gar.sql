CREATE TABLE IF NOT EXISTS gar (
    uuid uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    parent_uuid uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    /*level integer NOT NULL,*/
    dt timestamp with time zone NOT NULL,
    "user" text DEFAULT current_user NOT NULL,
    text text NOT NULL,
    mod integer DEFAULT 0 NOT NULL,
    "full" text NOT NULL,
    CONSTRAINT gar_parent_uuid_fkey FOREIGN KEY (parent_uuid) REFERENCES gar(uuid) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE IF NOT EXISTS gar_log INHERITS (gar);
CREATE OR REPLACE FUNCTION gar_child(uuid uuid) RETURNS bigint LANGUAGE sql STABLE AS $body$
    select count(1) from gar where parent_uuid = gar_child.uuid;
$body$;
CREATE OR REPLACE FUNCTION gar_insert(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, /*level integer, */"user" text, text text) RETURNS gar LANGUAGE sql AS $body$
    insert into gar (uuid, parent_uuid, name, short, type, post, /*level, */"user", text)
    values (coalesce(gar_insert.uuid, gen_random_uuid()), gar_insert.parent_uuid, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post, /*gar_insert.level, */gar_insert.user, gar_insert.text) returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_select(uuid uuid[]) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select gar.* from gar
    --inner join (select unnest(gar_select.uuid) as uuid, generate_series(1, array_upper(gar_select.uuid, 1)) as i) as _ on _.uuid = gar.uuid
    inner join (select unnest(gar_select.uuid) as uuid, generate_subscripts(gar_select.uuid, 1) as i) as _ on _.uuid = gar.uuid
    where gar.uuid = any(gar_select.uuid) order by i;
$body$;
CREATE OR REPLACE FUNCTION gar_select(uuid uuid, parent_uuid uuid) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    with recursive _ as (
        select gar.*, 0 as i from gar where uuid = gar_select.uuid
        union
        select gar.*, _.i + 1 as i from gar inner join _ on (_.parent_uuid = gar.uuid)
        where gar_select.parent_uuid is null or _.parent_uuid != gar_select.parent_uuid
    ) select uuid, parent_uuid, name, short, type, post, /*level, */dt, "user", text, mod, "full"/*, parent*/ from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent_uuid uuid, name text, short text, type text, post text, /*level integer, */dt text, "user" text, text text, "full" text, mod integer) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where true
    and (gar_select.full is not null or (gar_select.parent_uuid is null and parent_uuid is null) or parent_uuid = gar_select.parent_uuid)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    /*and (gar_select.level is null or level::text ilike gar_select.level::text||'%')*/
    and (gar_select.dt is null or case when gar_select.dt ilike '{%}' then dt between (gar_select.dt::timestamp with time zone[])[1] and (gar_select.dt::timestamp with time zone[])[2] else dt::text ilike gar_select.dt||'%' end)
    and (gar_select.user is null or user ilike gar_select.user||'%')
    and (gar_select.text is null or text ilike gar_select.text||'%' or text ilike '% '||gar_select.text||'%' or text ilike '%-'||gar_select.text||'%' or text ilike '%.'||gar_select.text||'%')
    and (gar_select.full is null or to_tsvector('russian', "full") @@ to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g')))
    and (gar_select.mod is null or mod::text ilike gar_select.mod||'%')
    order by case when gar_select.full is not null then ts_rank(to_tsvector('russian', "full"), to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g'))) else null end desc, /*level, */to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid[], post boolean DEFAULT NULL, "full" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid)
        ), p as (
            select post as text from _ where coalesce(gar_text.post, false) and post is not null /*order by level desc */limit 1
        ) select text from p union select string_agg(text, ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.full, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_text(name text, short text, type text) RETURNS text LANGUAGE sql IMMUTABLE AS $body$
    select case when gar_text.type in ('Местность') then gar_text.name when gar_text.name ilike '%'||gar_text.type||'%' then gar_text.name else gar_text.short||'.'||gar_text.name end;
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid, post boolean DEFAULT NULL, "full" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid, null)
        ), p as (
            select post as text from _ where coalesce(gar_text.post, false) and post is not null /*order by level desc */limit 1
        ) select text from p union select string_agg(text, ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.full, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_full(uuid uuid) RETURNS text LANGUAGE sql STABLE AS $body$
    select gar_text(gar_text.uuid, false, true);
$body$;
CREATE OR REPLACE FUNCTION gar_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    case TG_WHEN
        when 'BEFORE' then
            case TG_OP
                when 'INSERT' then
                    new.text = gar_text(new.name, new.short, new.type);
                    if new.user is null then new.user = current_user; end if;
                    if new.parent_uuid is null then
                        new.full = new.text;
                    else
                        select concat_ws(', ', "full", new.text) from gar where uuid = new.parent_uuid into new.full;
                    end if;
                    new.dt = clock_timestamp();
                when 'UPDATE' then
                    if (old.name, old.short, old.type) IS DISTINCT FROM (new.name, new.short, new.type) then new.text = gar_text(new.name, new.short, new.type); end if;
                    if (old.parent_uuid, old.name, old.short, old.type, old.post/*, old.level*/) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post/*, new.level*/) then
                        if new.parent_uuid is null then
                            new.full = new.text;
                        else
                            select concat_ws(', ', "full", new.text) from gar where uuid = new.parent_uuid into new.full;
                        end if;
                    end if;
                    if new.user is null then new.user = current_user; end if;
                    if (old.parent_uuid, old.name, old.short, old.type, old.post, /*old.level, */old.user) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post, /*new.level, */new.user) then
                        new.mod = new.mod + 1;
                        new.dt = clock_timestamp();
                        insert into gar_log select old.*;
                    end if;
                when 'DELETE' then
                    insert into gar_log select old.*;
            end case;
        when 'AFTER' then
            case TG_OP
                when 'INSERT' then null;
                when 'UPDATE' then
                    if (old.parent_uuid, old.name, old.short, old.type, old.post/*, old.level*/) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post/*, new.level*/) then
                        if old.full is distinct from new.full then
                            update gar set "full" = concat_ws(', ', new.full, text), "user" = new.user where parent_uuid = new.uuid;
                        end if;
                    end if;
                when 'DELETE' then null;
            end case;
    end case;
    --if TG_OP in ('DELETE', 'UPDATE') then raise info '%.% % % old %', TG_TABLE_SCHEMA, TG_TABLE_NAME, TG_WHEN, TG_OP, old; end if;
    --if TG_OP in ('INSERT', 'UPDATE') then raise info '%.% % % new %', TG_TABLE_SCHEMA, TG_TABLE_NAME, TG_WHEN, TG_OP, new; end if;
    if TG_OP in ('INSERT', 'UPDATE') then RETURN new; elsif TG_OP = 'DELETE' then RETURN old; end if;
END;$body$;
CREATE OR REPLACE FUNCTION gar_update(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, /*level integer, */"user" text, text text) RETURNS gar LANGUAGE sql AS $body$
    UPDATE gar SET
        parent_uuid = coalesce(gar_update.parent_uuid, parent_uuid),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post),
        /*level = coalesce(gar_update.level, level),*/
        "user" = coalesce(gar_update.user, "user"),
        text = coalesce(gar_update.text, text)
    WHERE uuid = _uuid returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_uuid(uuid uuid) RETURNS uuid[] LANGUAGE sql STABLE AS $body$
    select array_agg(uuid) from gar_select(gar_uuid.uuid, null);
$$;
CREATE INDEX IF NOT EXISTS gar_full_fts_idx ON gar USING gin (to_tsvector('russian'::regconfig, "full"));
CREATE INDEX IF NOT EXISTS gar_name_idx ON gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_parent_uuid_idx ON gar USING btree (parent_uuid);
CREATE INDEX IF NOT EXISTS gar_text_idx ON gar USING btree (text);
CREATE INDEX IF NOT EXISTS gar_type_idx ON gar USING btree (type);
CREATE TRIGGER gar_after_trigger AFTER INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
CREATE TRIGGER gar_before_trigger BEFORE INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
CREATE OR REPLACE FUNCTION gar_update(tbl text) RETURNS void LANGUAGE plpgsql AS $body$ <<local>> declare
    r dbf.fias_tmp;
    dir text default (regexp_match(gar_update.tbl, '\d\d$'))[1];
begin
    CREATE TEMPORARY TABLE IF NOT EXISTS tmp1 (
        uuid uuid,
        parent_uuid uuid,
        name text,
        short text,
        type text,
        post text/*,
        level integer*/
    ) ON COMMIT DROP;
    CREATE TEMPORARY TABLE IF NOT EXISTS tmp2 (
        uuid uuid,
        parent_uuid uuid,
        name text,
        short text,
        type text,
        post text/*,
        level integer*/
    ) ON COMMIT DROP;
    CREATE TEMPORARY TABLE IF NOT EXISTS tmp3 (
        uuid uuid,
        parent_uuid uuid,
        name text,
        short text,
        type text,
        post text/*,
        level integer*/
    ) ON COMMIT DROP;
    /*CREATE INDEX tmp1_level_idx ON tmp1 USING btree (level);*/
    CREATE INDEX tmp1_name_idx ON tmp1 USING btree (name);
    CREATE INDEX tmp1_parent_uuid_idx ON tmp1 USING btree (parent_uuid);
    CREATE INDEX tmp1_type_idx ON tmp1 USING btree (type);
    CREATE INDEX tmp1_uuid_idx ON tmp1 USING btree (uuid);
    /*CREATE INDEX tmp2_level_idx ON tmp2 USING btree (level);*/
    CREATE INDEX tmp2_name_idx ON tmp2 USING btree (name);
    CREATE INDEX tmp2_parent_uuid_idx ON tmp2 USING btree (parent_uuid);
    CREATE INDEX tmp2_type_idx ON tmp2 USING btree (type);
    CREATE INDEX tmp2_uuid_idx ON tmp2 USING btree (uuid);
    /*CREATE INDEX tmp3_level_idx ON tmp3 USING btree (level);*/
    CREATE INDEX tmp3_name_idx ON tmp3 USING btree (name);
    CREATE INDEX tmp3_parent_uuid_idx ON tmp3 USING btree (parent_uuid);
    CREATE INDEX tmp3_type_idx ON tmp3 USING btree (type);
    CREATE INDEX tmp3_uuid_idx ON tmp3 USING btree (uuid);
    if tbl ~ E'^addr_obj_\d\d$' then
        execute $$ insert into tmp1 SELECT distinct
            addr_obj.objectguid AS uuid,
            addr_obj_parent.objectguid AS parent_uuid,
            addr_obj.name AS name,
            rtrim(addr_obj_types.shortname, '.') AS short,
            addr_obj_types.name AS type,
            addr_obj_params.value AS post/*,
            socrbase.kod_t_st::integer AS level*/
        FROM addr_obj_$$||local.dir||$$ as addr_obj
        inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level::int AND addr_obj_types.shortname = addr_obj.typename and addr_obj_types.isactive = 1 and current_timestamp between addr_obj_types.startdate and addr_obj_types.enddate
        left join adm_hierarchy_$$||local.dir||$$ as adm_hierarchy on adm_hierarchy.objectid = addr_obj.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
        left join addr_obj_$$||local.dir||$$ as addr_obj_parent on addr_obj_parent.objectid = adm_hierarchy.parentobjid and addr_obj_parent.isactive = 1 and addr_obj_parent.isactual = 1 and current_timestamp between addr_obj_parent.startdate and addr_obj_parent.enddate
        left join param_types on param_types.name = 'Почтовый индекс' and isactive and current_timestamp between param_types.startdate and param_types.enddate
        left join addr_obj_params_$$||local.dir||$$ as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
        WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate $$;
    elsif tbl ~ E'apartments_\d\d' then
        execute $$ insert into tmp1 SELECT distinct
            apartments.objectguid AS uuid,
            apartments_parent.objectguid AS parent_uuid,
            apartments.number AS name,
            rtrim(apartment_types.shortname, '.') AS short,
            apartments_types.name AS type,
            apartments_params.value AS post/*,
            socrbase.kod_t_st::integer AS level*/
        FROM apartments_$$||local.dir||$$ as apartments
        inner JOIN apartment_types ON apartment_types.level = apartments.aparttype and apartment_types.isactive = 1 and current_timestamp between apartment_types.startdate and apartment_types.enddate
        left join adm_hierarchy_$$||local.dir||$$ as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
        left join $$||gar_update.tbl||$$ as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid and apartments_parent.isactive = 1 and apartments_parent.isactual = 1 and current_timestamp between apartments_parent.startdate and apartments_parent.enddate
        left join param_types on param_types.name = 'Почтовый индекс' and isactive and current_timestamp between param_types.startdate and param_types.enddate
        left join apartments_params_$$||local.dir||$$ as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id and current_timestamp between apartments_params.startdate and apartments_params.enddate
        WHERE apartments.isactive = 1 and apartments.isactual = 1 and current_timestamp between apartments.startdate and apartments.enddate $$;
    elsif tbl ~ E'houses_\d\d' then
        execute $$ insert into tmp1 SELECT distinct
            houses.objectguid AS uuid,
            houses_parent.objectguid AS parent_uuid,
            houses.number AS name,
            rtrim(houses_types.shortname, '.') AS short,
            houses_types.name AS type,
            houses_params.value AS post/*,
            socrbase.kod_t_st::integer AS level*/
        FROM apartments_$$||local.dir||$$ as apartments
        inner JOIN apartment_types ON apartment_types.level = apartments.aparttype and apartment_types.isactive = 1 and current_timestamp between apartment_types.startdate and apartment_types.enddate
        left join adm_hierarchy_$$||local.dir||$$ as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
        left join $$||gar_update.tbl||$$ as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid and apartments_parent.isactive = 1 and apartments_parent.isactual = 1 and current_timestamp between apartments_parent.startdate and apartments_parent.enddate
        left join param_types on param_types.name = 'Почтовый индекс' and isactive and current_timestamp between param_types.startdate and param_types.enddate
        left join apartments_params_$$||local.dir||$$ as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id and current_timestamp between apartments_params.startdate and apartments_params.enddate
        WHERE apartments.isactive = 1 and apartments.isactual = 1 and current_timestamp between apartments.startdate and apartments.enddate $$;
    elsif tbl ~ 'house\d\d' then
        execute $$ with _fias as (SELECT distinct
            house.houseguid::uuid AS uuid,
            house.aoguid::uuid AS parent_uuid,
            CASE
                WHEN house.housenum IS NOT NULL THEN (house.housenum ||
                CASE
                    WHEN house.strucnum IS NOT NULL THEN ', стр.' || house.strucnum
                    ELSE ''
                END) ||
                CASE
                    WHEN house.buildnum IS NOT NULL THEN ', корп.' || house.buildnum
                    ELSE ''
                END
                WHEN house.strucnum IS NOT NULL THEN house.strucnum ||
                CASE
                    WHEN house.buildnum IS NOT NULL THEN ', корп.' || house.buildnum
                    ELSE ''
                END
                WHEN house.buildnum IS NOT NULL THEN house.buildnum
                ELSE NULL
            END AS name,
            CASE
                WHEN house.housenum IS NOT NULL THEN
                CASE
                    WHEN house.eststatus = 1 THEN 'влд'
                    WHEN house.eststatus = 3 THEN 'двлд'
                    ELSE 'д'
                END
                WHEN house.strucnum IS NOT NULL THEN
                CASE
                    WHEN house.eststatus = 1 THEN 'стр'
                    ELSE 'соор'
                END
                WHEN house.buildnum IS NOT NULL THEN 'корп'
                ELSE NULL::text
            END AS short,
            CASE
                WHEN house.housenum IS NOT NULL THEN
                CASE
                    WHEN house.eststatus = 1 THEN 'Владение'
                    WHEN house.eststatus = 3 THEN 'Домовладение'
                    ELSE 'Дом'
                END
                WHEN house.strucnum IS NOT NULL THEN
                CASE
                    WHEN house.eststatus = 1 THEN 'Строение'
                    ELSE 'Сооружение'
                END
                WHEN house.buildnum IS NOT NULL THEN 'Корпус'
                ELSE NULL::text
            END AS type,
            house.postalcode AS post/*,
            CASE
                WHEN house.housenum IS NOT NULL THEN
                CASE
                    WHEN house.eststatus = 1 THEN 802
                    WHEN house.eststatus = 3 THEN 804
                    ELSE 803
                END
                WHEN house.strucnum IS NOT NULL THEN
                CASE
                    WHEN house.strstatus = 2 THEN 811
                    ELSE 810
                END
                WHEN house.buildnum IS NOT NULL THEN 806
                ELSE NULL::integer
            END AS level*/
        FROM $$||tbl||$$ as house WHERE house.startdate <= now() AND house.enddate >= now())
        insert into fias_tmp1 select * from _fias $$;
    /*elsif tbl ~ 'landmark' then
        execute $$ with _fias as (SELECT distinct
            landmark.landguid::uuid AS uuid,
            landmark.aoguid::uuid AS parent_uuid,
            landmark.location AS name,
            'местность' AS short,
            'Местность' AS type,
            landmark.postalcode AS post,
            780 AS level
        FROM $$||tbl||$$ as landmark WHERE landmark.startdate <= now() AND landmark.enddate >= now())
        insert into fias_tmp1 select * from _fias $$;*/
    elsif tbl ~ 'stead\d\d' then
        execute $$ with _fias as (SELECT distinct
            stead.steadguid::uuid AS uuid,
            stead.parentguid::uuid AS parent_uuid,
            stead.number AS name,
            'уч-к' AS short,
            'Участок' AS type,
            stead.postalcode AS post/*,
            730 AS level*/
        FROM $$||tbl||$$ as stead WHERE stead.livestatus = 1 and stead.number is not null)
        insert into fias_tmp1 select * from _fias $$;
    elsif tbl ~ 'room\d\d' then
        execute $$ with _fias as (SELECT distinct
            room.roomguid::uuid AS uuid,
            room.houseguid::uuid AS parent_uuid,
            CASE
                WHEN room.flatnumber IS NOT NULL THEN room.flatnumber ||
                CASE
                    WHEN room.roomnumber IS NOT NULL THEN ', к.' || room.roomnumber
                    ELSE ''
                END
                WHEN room.roomnumber IS NOT NULL THEN room.roomnumber
                ELSE NULL::text
            END AS name,
            CASE
                WHEN room.flatnumber IS NOT NULL THEN 'кв'
                WHEN room.roomnumber IS NOT NULL THEN 'к'
                ELSE NULL::text
            END AS short,
            CASE
                WHEN room.flatnumber IS NOT NULL THEN 'Квартира'
                WHEN room.roomnumber IS NOT NULL THEN 'Комната'
                ELSE NULL::text
            END AS type,
            room.postalcode AS post/*,
            CASE
                WHEN room.flatnumber IS NOT NULL THEN 902
                WHEN room.roomnumber IS NOT NULL THEN 903
                ELSE NULL::integer
            END AS level*/
        FROM $$||tbl||$$ as room WHERE room.livestatus = 1)
        insert into fias_tmp1 select * from _fias $$;
    end if;
    insert into fias_tmp2
    select distinct on (a.parent_uuid, a.name, a.type) a.*
    from        fias_tmp1 as a
    left join   fias as b on a.uuid = b.uuid
    left join   fias as c on a.parent_uuid = c.uuid
    where       b.uuid is null
    and         (tbl ~ 'addrob\d\d' or c.uuid is not null);
    for r in select * from fias_tmp2 /*order by level */loop begin
        insert into fias select r.*;
        exception when others then raise warning '% - %: %', sqlstate, sqlerrm, r;
    end; end loop;
    --if tbl !~ 'room\d\d' then
    insert into fias_tmp3
    select distinct on (a.parent_uuid, a.name, a.type) a.*
    from        fias_tmp1 as a
    inner join  fias as b on a.uuid = b.uuid
    where       (a.parent_uuid, a.name, a.short, a.type, a.post/*, a.level*/) is distinct from (b.parent_uuid, b.name, b.short, b.type, b.post/*, b.level*/);
    for r in select * from fias_tmp3 loop begin
        update      fias as a
        set         (parent_uuid, name, short, type, post/*, level*/, "user") = (r.parent_uuid, r.name, r.short, r.type, r.post, /*r.level, */current_user)
        where       a.uuid = r.uuid;
        exception when others then raise warning '% - %: %', sqlstate, sqlerrm, r;
    end; end loop;
    --end if;
end;$body$;
