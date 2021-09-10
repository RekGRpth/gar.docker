CREATE TABLE IF NOT EXISTS gar (
    uuid uuid NOT NULL DEFAULT gen_random_uuid(),
    parent_uuid uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    CONSTRAINT gar_pkey PRIMARY KEY (uuid),
    CONSTRAINT gar_name_short_type_key UNIQUE (parent_uuid, name, type)
);
CREATE OR REPLACE FUNCTION gar_child(uuid uuid) RETURNS bigint LANGUAGE sql STABLE AS $body$
    select count(1) from gar where parent_uuid = gar_child.uuid;
$body$;
CREATE OR REPLACE FUNCTION gar_insert(uuid uuid, parent_uuid uuid, name text, short text, type text, post text) RETURNS gar LANGUAGE sql AS $body$
    insert into gar (uuid, parent_uuid, name, short, type, post)
    values (coalesce(gar_insert.uuid, gen_random_uuid()), gar_insert.parent_uuid, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post) returning *;
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
    ) select uuid, parent_uuid, name, short, type, post from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent_uuid uuid, name text, short text, type text, post text) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where true
    and ((gar_select.parent_uuid is null and parent_uuid is null) or parent_uuid = gar_select.parent_uuid)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(name text, short text, type text) RETURNS text LANGUAGE sql IMMUTABLE AS $body$
    select case when gar_text.type in ('Местность') then gar_text.name when gar_text.name ilike '%'||gar_text.type||'%' then gar_text.name else gar_text.short||'.'||gar_text.name end;
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid[], post boolean DEFAULT NULL, "all" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid)
        ), p as (
            select post from _ where coalesce(gar_text.post, false) and post is not null limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.all, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_text(uuid uuid, post boolean DEFAULT NULL, "all" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.uuid, null)
        ), p as (
            select post from _ where coalesce(gar_text.post, false) and post is not null limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.all, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_full(uuid uuid) RETURNS text LANGUAGE sql STABLE AS $body$
    select gar_text(gar_full.uuid, true, true);
$body$;
CREATE OR REPLACE FUNCTION gar_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    if TG_OP in ('INSERT', 'UPDATE') then RETURN new; elsif TG_OP = 'DELETE' then RETURN old; end if;
END;$body$;
CREATE OR REPLACE FUNCTION gar_update(uuid uuid, parent_uuid uuid, name text, short text, type text, post text) RETURNS gar LANGUAGE sql AS $body$
    UPDATE gar SET
        parent_uuid = coalesce(gar_update.parent_uuid, parent_uuid),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post)
    WHERE uuid = gar_update.uuid returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_uuid(uuid uuid) RETURNS uuid[] LANGUAGE sql STABLE AS $body$
    select array_agg(uuid) from gar_select(gar_uuid.uuid, null);
$body$;
CREATE INDEX IF NOT EXISTS gar_parent_uuid_idx ON gar USING btree (parent_uuid);
CREATE INDEX IF NOT EXISTS gar_name_idx ON gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_short_idx ON gar USING btree (short);
CREATE INDEX IF NOT EXISTS gar_type_idx ON gar USING btree (type);
CREATE TRIGGER gar_after_trigger AFTER INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
CREATE TRIGGER gar_before_trigger BEFORE INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
