CREATE TABLE IF NOT EXISTS gar (
    uuid uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    parent_uuid uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    text text NOT NULL,
    "full" text NOT NULL,
    CONSTRAINT gar_parent_uuid_fkey FOREIGN KEY (parent_uuid) REFERENCES gar(uuid) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE OR REPLACE FUNCTION gar_child(uuid uuid) RETURNS bigint LANGUAGE sql STABLE AS $body$
    select count(1) from gar where parent_uuid = gar_child.uuid;
$body$;
CREATE OR REPLACE FUNCTION gar_insert(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, text text) RETURNS gar LANGUAGE sql AS $body$
    insert into gar (uuid, parent_uuid, name, short, type, post, text)
    values (coalesce(gar_insert.uuid, gen_random_uuid()), gar_insert.parent_uuid, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post, gar_insert.text) returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_select(uuid uuid[]) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select gar.* from gar
    inner join (select unnest(gar_select.uuid) as uuid, generate_subscripts(gar_select.uuid, 1) as i) as _ on _.uuid = gar.uuid
    where gar.uuid = any(gar_select.uuid) order by i;
$body$;
CREATE OR REPLACE FUNCTION gar_select(uuid uuid, parent_uuid uuid) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    with recursive _ as (
        select gar.*, 0 as i from gar where uuid = gar_select.uuid
        union
        select gar.*, _.i + 1 as i from gar inner join _ on (_.parent_uuid = gar.uuid)
        where gar_select.parent_uuid is null or _.parent_uuid != gar_select.parent_uuid
    ) select uuid, parent_uuid, name, short, type, post, text, "full" from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent_uuid uuid, name text, short text, type text, post text, text text, "full" text) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where true
    and (gar_select.full is not null or (gar_select.parent_uuid is null and parent_uuid is null) or parent_uuid = gar_select.parent_uuid)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    and (gar_select.text is null or text ilike gar_select.text||'%' or text ilike '% '||gar_select.text||'%' or text ilike '%-'||gar_select.text||'%' or text ilike '%.'||gar_select.text||'%')
    and (gar_select.full is null or to_tsvector('russian', "full") @@ to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g')))
    order by case when gar_select.full is not null then ts_rank(to_tsvector('russian', "full"), to_tsquery('russian', regexp_replace(plainto_tsquery('russian', regexp_replace(gar_select.full, E'[ \t\r\n\-\.\,\/]+', ' ', 'g'))::text, E'(\'\\w+\')', E'\\1:*', 'g'))) else null end desc, /*level, */to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid[], post boolean DEFAULT NULL, "full" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid)
        ), p as (
            select post as text from _ where coalesce(gar_text.post, false) and post is not null limit 1
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
            select post as text from _ where coalesce(gar_text.post, false) and post is not null limit 1
        ) select text from p union select string_agg(text, ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.full, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_full(uuid uuid) RETURNS text LANGUAGE sql STABLE AS $body$
    select gar_text(gar_full.uuid, false, true);
$body$;
CREATE OR REPLACE FUNCTION gar_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    case TG_WHEN
        when 'BEFORE' then
            case TG_OP
                when 'INSERT' then
                    new.text = gar_text(new.name, new.short, new.type);
                    if new.parent_uuid is null then
                        new.full = new.text;
                    else
                        select concat_ws(', ', "full", new.text) from gar where uuid = new.parent_uuid into new.full;
                    end if;
                when 'UPDATE' then
                    if (old.name, old.short, old.type) IS DISTINCT FROM (new.name, new.short, new.type) then new.text = gar_text(new.name, new.short, new.type); end if;
                    if (old.parent_uuid, old.name, old.short, old.type, old.post) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post) then
                        if new.parent_uuid is null then
                            new.full = new.text;
                        else
                            select concat_ws(', ', "full", new.text) from gar where uuid = new.parent_uuid into new.full;
                        end if;
                    end if;
            end case;
        when 'AFTER' then
            case TG_OP
                when 'UPDATE' then
                    if (old.parent_uuid, old.name, old.short, old.type, old.post) IS DISTINCT FROM (new.parent_uuid, new.name, new.short, new.type, new.post) then
                        if old.full is distinct from new.full then
                            update gar set "full" = concat_ws(', ', new.full, text) where parent_uuid = new.uuid;
                        end if;
                    end if;
            end case;
    end case;
    if TG_OP in ('INSERT', 'UPDATE') then RETURN new; elsif TG_OP = 'DELETE' then RETURN old; end if;
END;$body$;
CREATE OR REPLACE FUNCTION gar_update(uuid uuid, parent_uuid uuid, name text, short text, type text, post text, text text) RETURNS gar LANGUAGE sql AS $body$
    UPDATE gar SET
        parent_uuid = coalesce(gar_update.parent_uuid, parent_uuid),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post),
        text = coalesce(gar_update.text, text)
    WHERE uuid = gar_update.uuid returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_uuid(uuid uuid) RETURNS uuid[] LANGUAGE sql STABLE AS $body$
    select array_agg(uuid) from gar_select(gar_uuid.uuid, null);
$body$;
CREATE INDEX IF NOT EXISTS gar_full_fts_idx ON gar USING gin (to_tsvector('russian'::regconfig, "full"));
CREATE INDEX IF NOT EXISTS gar_name_idx ON gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_parent_uuid_idx ON gar USING btree (parent_uuid);
CREATE INDEX IF NOT EXISTS gar_text_idx ON gar USING btree (text);
CREATE INDEX IF NOT EXISTS gar_type_idx ON gar USING btree (type);
CREATE TRIGGER gar_after_trigger AFTER INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
CREATE TRIGGER gar_before_trigger BEFORE INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
