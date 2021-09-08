CREATE TABLE IF NOT EXISTS gar (
    uuid uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    parent_uuid uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    level integer NOT NULL,
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
CREATE OR REPLACE FUNCTION gar_insert(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, level integer, "user" text, text text) RETURNS gar LANGUAGE sql AS $body$
    insert into gar (uuid, parent_uuid, name, short, type, post, level, "user", text)
    values (coalesce(gar_insert.uuid, gen_random_uuid()), gar_insert.parent_uuid, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post, gar_insert.level, gar_insert.user, gar_insert.text) returning *;
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
    ) select uuid, parent_uuid, name, short, type, post, level, dt, "user", text, mod, "full"/*, parent*/ from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent_uuid uuid, name text, short text, type text, post text, level integer, dt text, "user" text, text text, "full" text, mod integer) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where true
    and (gar_select.full is not null or (gar_select.parent_uuid is null and parent_uuid is null) or parent_uuid = gar_select.parent_uuid)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    and (gar_select.level is null or level::text ilike gar_select.level::text||'%')
    and (gar_select.dt is null or case when gar_select.dt ilike '{%}' then dt between (gar_select.dt::timestamp with time zone[])[1] and (gar_select.dt::timestamp with time zone[])[2] else dt::text ilike gar_select.dt||'%' end)
    and (gar_select.user is null or user ilike gar_select.user||'%')
    and (gar_select.text is null or text ilike gar_select.text||'%' or text ilike '% '||gar_select.text||'%' or text ilike '%-'||gar_select.text||'%' or text ilike '%.'||gar_select.text||'%')
    and (gar_select.full is null or to_tsvector('russian', "full") @@ to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g')))
    and (gar_select.mod is null or mod::text ilike gar_select.mod||'%')
    order by case when gar_select.full is not null then ts_rank(to_tsvector('russian', "full"), to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g'))) else null end desc, level, to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid[], post boolean DEFAULT NULL, "full" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid)
        ), p as (
            select post as text from _ where coalesce(gar_text.post, false) and post is not null order by level desc limit 1
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
            select post as text from _ where coalesce(gar_text.post, false) and post is not null order by level desc limit 1
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
                    if (old.parent_uuid, old.name, old.short, old.type, old.post, old.level) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post, new.level) then
                        if new.parent_uuid is null then
                            new.full = new.text;
                        else
                            select concat_ws(', ', "full", new.text) from gar where uuid = new.parent_uuid into new.full;
                        end if;
                    end if;
                    if new.user is null then new.user = current_user; end if;
                    if (old.parent_uuid, old.name, old.short, old.type, old.post, old.level, old.user) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post, new.level, new.user) then
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
                    if (old.parent_uuid, old.name, old.short, old.type, old.post, old.level) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post, new.level) then
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
CREATE OR REPLACE FUNCTION gar_update(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, level integer, "user" text, text text) RETURNS gar LANGUAGE sql AS $body$
    UPDATE gar SET
        parent_uuid = coalesce(gar_update.parent_uuid, parent_uuid),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post),
        level = coalesce(gar_update.level, level),
        "user" = coalesce(gar_update.user, "user"),
        text = coalesce(gar_update.text, text)
    WHERE uuid = _uuid returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_uuid(uuid uuid) RETURNS uuid[] LANGUAGE sql STABLE AS $body$
    select array_agg(uuid) from gar_select(gar_uuid.uuid, null);
$$;
