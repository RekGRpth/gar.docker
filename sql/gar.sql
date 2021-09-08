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
    --inner join (select unnest(gar_select.uuid) as uuid, generate_series(1, array_upper(gar_select.uuid, 1)) as num) as _ on _.uuid = gar.uuid
    inner join (select unnest(gar_select.uuid) as uuid, generate_subscripts(gar_select.uuid, 1) as num) as _ on _.uuid = gar.uuid
    where gar.uuid = any(gar_select.uuid) order by num
$body$;
