CREATE TABLE IF NOT EXISTS gar (
    id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    parent uuid,
    name text NOT NULL,
    short text NOT NULL,
    type text NOT NULL,
    post text,
    region smallint NOT NULL
);
CREATE INDEX IF NOT EXISTS gar_parent_idx ON gar USING btree (parent);
CREATE INDEX IF NOT EXISTS gar_name_idx ON gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_short_idx ON gar USING btree (short);
CREATE INDEX IF NOT EXISTS gar_type_idx ON gar USING btree (type);
CREATE INDEX IF NOT EXISTS gar_region_idx ON gar USING btree (region);
CREATE OR REPLACE FUNCTION gar_text(name text, short text, type text) RETURNS text LANGUAGE sql IMMUTABLE AS $body$
    select case
        when gar_text.type in ('Не определено') then gar_text.name
        when gar_text.type in ('Чувашия') then gar_text.name||' '||gar_text.type
        when gar_text.name ilike '%'||gar_text.type||'%' then gar_text.name
        else gar_text.short||'.'||gar_text.name
    end;
$body$;
CREATE OR REPLACE VIEW gar_view AS SELECT gar.*, gar_text(name, short, type) AS text from gar;
CREATE OR REPLACE FUNCTION gar_child(id uuid) RETURNS bigint LANGUAGE sql STABLE AS $body$
    select count(1) from gar where parent = gar_child.id;
$body$;
CREATE OR REPLACE FUNCTION gar_insert(id uuid, parent uuid, name text, short text, type text, post text, region smallint) RETURNS gar_view LANGUAGE sql AS $body$
    insert into gar (id, parent, name, short, type, post, region)
    values (coalesce(gar_insert.id, gen_random_uuid()), gar_insert.parent, gar_insert.name, gar_insert.short, gar_insert.type, gar_insert.post, gar_insert.region)
    returning gar.*, gar_text(gar.name, gar.short, gar.type) AS text;
$body$;
CREATE OR REPLACE FUNCTION gar_select(id uuid[]) RETURNS SETOF gar_view LANGUAGE sql STABLE AS $body$
    select gar.*, gar_text(name, short, type) AS text from gar
    inner join (select unnest(gar_select.id) as id, generate_subscripts(gar_select.id, 1) as i) as _ on _.id = gar.id
    where gar.id = any(gar_select.id) order by i;
$body$;
CREATE OR REPLACE FUNCTION gar_select(id uuid, parent uuid DEFAULT NULL) RETURNS SETOF gar_view LANGUAGE sql STABLE AS $body$
    with recursive _ as (
        select gar.*, 0 as i from gar where id = gar_select.id
        union
        select gar.*, _.i + 1 as i from gar inner join _ on (_.parent = gar.id)
        where gar_select.parent is null or _.parent != gar_select.parent
    ) select id, parent, name, short, type, post, region, gar_text(name, short, type) AS text from _ order by i desc;
$body$;
CREATE OR REPLACE FUNCTION gar_select(parent uuid, name text, short text, type text, post text, region text) RETURNS SETOF gar_view LANGUAGE sql STABLE AS $body$
    select gar.*, gar_text(gar.name, gar.short, gar.type) AS text from gar where true
    and ((gar_select.parent is null and parent is null) or parent = gar_select.parent)
    and (gar_select.name is null or name ilike gar_select.name||'%' or name ilike '% '||gar_select.name||'%' or name ilike '%-'||gar_select.name||'%' or name ilike '%.'||gar_select.name||'%')
    and (gar_select.short is null or short ilike gar_select.short)
    and (gar_select.type is null or case when gar_select.type ilike '{%}' then type = any(gar_select.type::text[]) else type ilike gar_select.type||'%' end)
    and (gar_select.post is null or post ilike gar_select.post||'%')
    and (gar_select.region is null or case when gar_select.region ilike '{%}' then region = any(gar_select.region::smallint[]) else region = gar_select.region::smallint end)
    order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_select_child(parent uuid, name text, short text, type text, post text, region text) RETURNS SETOF gar_view LANGUAGE sql STABLE AS $body$
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
        and (gar_select_child.region is null or case when gar_select_child.region ilike '{%}' then region = any(gar_select_child.region::smallint[]) else region = gar_select_child.region::smallint end)
        order by i
    ) select id, parent, name, short, type, post, region, gar_text(name, short, type) AS text from _ order by to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_select_parent(parent uuid, name text, short text, type text, post text, region text) RETURNS SETOF gar_view LANGUAGE sql STABLE AS $body$
    select gar.*, gar_text(gar.name, gar.short, gar.type) AS text from gar where type = any(gar_select_parent.type::text[])
    and (gar_select_parent.name is null or name ilike gar_select_parent.name||'%' or name ilike '% '||gar_select_parent.name||'%' or name ilike '%-'||gar_select_parent.name||'%' or name ilike '%.'||gar_select_parent.name||'%')
    order by (select count(id) from gar_select(id, gar_select_parent.parent)), to_number('0'||name, '999999999'), name;
$body$;
CREATE OR REPLACE FUNCTION gar_text(id uuid[], post boolean DEFAULT true) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.id)
        ), p as (
            select unnest(array_agg(post)) as post, generate_subscripts(array_agg(post), 1) as i from _ where gar_text.post and post is not null order by i desc limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_text(id uuid, post boolean DEFAULT true) RETURNS text LANGUAGE sql STABLE AS $body$
    with _ as (
        with _ as (
            select * from gar_select(gar_text.id)
        ), p as (
            select unnest(array_agg(post)) as post, generate_subscripts(array_agg(post), 1) as i from _ where gar_text.post and post is not null order by i desc limit 1
        ) select post as text from p union select string_agg(gar_text(name, short, type), ', ') as text from _
    ) select string_agg(text, ', ') from _
$body$;
CREATE OR REPLACE FUNCTION gar_update(id uuid, parent uuid, name text, short text, type text, post text, region smallint) RETURNS gar_view LANGUAGE sql AS $body$
    UPDATE gar SET
        parent = coalesce(gar_update.parent, parent),
        name = coalesce(gar_update.name, name),
        short = coalesce(gar_update.short, short),
        type = coalesce(gar_update.type, type),
        post = coalesce(gar_update.post, post),
        region = coalesce(gar_update.region, region)
    WHERE id = gar_update.id returning gar.*, gar_text(gar.name, gar.short, gar.type) AS text;
$body$;
