-- drop table gar cascade
DO $body$ BEGIN
    CREATE TYPE object AS ENUM (
        'addr_obj',
        'apartments',
        'carplaces',
        'houses',
        'rooms',
        'steads'
    );
    EXCEPTION WHEN others THEN null;
END $body$;
CREATE OR REPLACE FUNCTION gar_text(name text, short text, type text) RETURNS text LANGUAGE sql IMMUTABLE AS $body$
    select case when gar_text.type in ('Местность') then gar_text.name when gar_text.name ilike '%'||gar_text.type||'%' then gar_text.name else gar_text.short||'.'||gar_text.name end;
$body$;
CREATE TABLE IF NOT EXISTS gar (
    id uuid NOT NULL DEFAULT gen_random_uuid(),
    parent uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    object object NOT NULL,
    region smallint NOT NULL,
    text text NOT NULL GENERATED ALWAYS AS (gar_text(name, short, type)) STORED,
    CONSTRAINT gar_pkey PRIMARY KEY (id),
    CONSTRAINT gar_name_short_type_key UNIQUE (parent, name, type)
);
GRANT SELECT ON TABLE gar TO nginx;
CREATE OR REPLACE FUNCTION gar_child(id uuid) RETURNS bigint LANGUAGE sql STABLE AS $body$
    select count(1) from gar where parent = gar_child.id;
$body$;
CREATE OR REPLACE FUNCTION gar_insert(id uuid, parent uuid, name text, short text, type text, post text, object object, region smallint) RETURNS gar LANGUAGE sql AS $body$
    insert into gar (id, parent, name, short, type, post, object, region)
    values (coalesce(gar_insert.id, gen_random_uuid()), gar_insert.parent, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post, gar_insert.object, gar_insert.region) returning *;
$body$;
CREATE OR REPLACE FUNCTION gar_select(id uuid[]) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select gar.* from gar
    inner join (select unnest(gar_select.id) as id, generate_subscripts(gar_select.id, 1) as i) as _ on _.id = gar.id
    where gar.id = any(gar_select.id) order by i;
$body$;
CREATE OR REPLACE FUNCTION gar_select(id uuid, parent uuid) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    with recursive _ as (
        select gar.*, 0 as i from gar where id = gar_select.id
        union
        select gar.*, _.i + 1 as i from gar inner join _ on (_.parent = gar.id)
        where gar_select.parent is null or _.parent != gar_select.parent
    ) select id, parent, name, short, type, post, object, region, text from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent uuid, name text, short text, type text, post text, object text, region text) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where true
    and ((gar_select.parent is null and parent is null) or parent = gar_select.parent)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    and (gar_select.object is null or case when gar_select.object ilike '{%}' then object = any(gar_select.object::object[]) else object = gar_select.object::object end)
    and (gar_select.region is null or case when gar_select.region ilike '{%}' then region = any(gar_select.region::smallint[]) else region = gar_select.region::smallint end)
    order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_select_child(parent uuid, name text, short text, type text, post text, object text, region text) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    with _ as (
        with recursive _ as (
            select gar.*, 0 as i from gar where (gar_select_child.parent is null and parent is null) or id = gar_select_child.parent
            union
            select gar.*, _.i + 1 as i from gar inner join _ on _.id = gar.parent
        ) select * from _ where i > 0
        and (gar_select_child.name is null or name ilike gar_select_child.name||'%' or name ilike '% '||gar_select_child.name||'%' or name ilike '%-'||gar_select_child.name||'%' or name ilike '%.'||gar_select_child.name||'%')
        and (gar_select_child.short is null or short ilike gar_select_child.short)
        and (gar_select_child.type is null or case when gar_select_child.type ilike '{%}' then type = any(gar_select_child.type::text[]) else type ilike gar_select_child.type||'%' end)
        and (gar_select_child.post is null or post ilike gar_select_child.post||'%')
        and (gar_select_child.object is null or case when gar_select_child.object ilike '{%}' then object = any(gar_select_child.object::object[]) else object = gar_select_child.object::object end)
        and (gar_select_child.region is null or case when gar_select_child.region ilike '{%}' then region = any(gar_select_child.region::smallint[]) else region = gar_select_child.region::smallint end)
        order by i
    ) select id, parent, name, short, type, post, object, region, text from _ order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_select_parent(parent uuid, name text, short text, type text, post text, object text, region text) RETURNS SETOF gar LANGUAGE sql STABLE AS $body$
    select * from gar where type = any(gar_select_parent.type::text[])
    and (gar_select_parent.name is null or name ilike gar_select_parent.name||'%' or name ilike '% '||gar_select_parent.name||'%' or name ilike '%-'||gar_select_parent.name||'%' or name ilike '%.'||gar_select_parent.name||'%')
    order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(id uuid[], post boolean DEFAULT NULL, "all" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.id)
        ), p as (
            select post from _ where coalesce(gar_text.post, false) and post is not null limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.all, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_text(id uuid, post boolean DEFAULT NULL, "all" boolean DEFAULT NULL) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.id, null)
        ), p as (
            select unnest(array_agg(post)) as post, generate_subscripts(array_agg(post), 1) as i from _ where coalesce(true, false) and post is not null order by i desc limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _ where type not in ('Подъезд', 'Этаж') or coalesce(gar_text.all, false)
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_full(id uuid) RETURNS text LANGUAGE sql STABLE AS $body$
    select gar_text(gar_full.id, true, true);
$body$;
/*CREATE OR REPLACE FUNCTION gar_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    if TG_OP in ('INSERT', 'UPDATE') then RETURN new; elsif TG_OP = 'DELETE' then RETURN old; end if;
END;$body$;*/
CREATE OR REPLACE FUNCTION gar_update(id uuid, parent uuid, name text, short text, type text, post text, object object, region smallint) RETURNS gar LANGUAGE sql AS $body$
    UPDATE gar SET
        parent = coalesce(gar_update.parent, parent),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post),
        object = coalesce(gar_update.object, object),
        region = coalesce(gar_update.region, region)
    WHERE id = gar_update.id returning *;
$body$;
/*CREATE OR REPLACE FUNCTION gar_id(id uuid) RETURNS uuid[] LANGUAGE sql STABLE AS $body$
    select array_agg(id) from gar_select(gar_id.id, null);
$body$;*/
CREATE INDEX IF NOT EXISTS gar_parent_idx ON gar USING btree (parent);
CREATE INDEX IF NOT EXISTS gar_name_idx ON gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_short_idx ON gar USING btree (short);
CREATE INDEX IF NOT EXISTS gar_type_idx ON gar USING btree (type);
CREATE INDEX IF NOT EXISTS gar_object_idx ON gar USING btree (object);
CREATE INDEX IF NOT EXISTS gar_region_idx ON gar USING btree (region);
/*DO $body$ BEGIN
    CREATE TRIGGER gar_after_trigger AFTER INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
    CREATE TRIGGER gar_before_trigger BEFORE INSERT OR DELETE OR UPDATE ON gar FOR EACH ROW EXECUTE PROCEDURE gar_trigger();
    EXCEPTION WHEN others THEN null;
END $body$;*/
