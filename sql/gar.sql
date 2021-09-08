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
