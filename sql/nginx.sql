\connect gar nginx
CREATE OR REPLACE FUNCTION gar_insert(INOUT json json) RETURNS json LANGUAGE plpgsql AS $body$ <<local>> declare
    query json default gar_insert.json->'json_get_vars'; -- параметры запроса
    uuid uuid default nullif(trim(local.query->>'uuid'), '')::uuid; -- уид
    parent_uuid uuid default nullif(trim(local.query->>'parent_uuid'), '')::uuid; -- уид родителя
    name text default nullif(trim(local.query->>'name'), ''); -- наименование
    short text default nullif(trim(local.query->>'short'), ''); -- кратко
    type text default nullif(trim(local.query->>'type'), ''); -- тип
    post text default nullif(trim(local.query->>'port'), ''); -- индекс
    level integer default nullif(trim(local.query->>'level'), '')::integer; -- уровень
    user text default gar_insert.json->>'remote_user'; -- пользователь
    text text default nullif(trim(local.query->>'text'), ''); -- текст
begin
    with _ as (
        with _ as (
            select * from gar_insert(local.uuid, local.parent_uuid, local.name, local.short, local.type, local.post, local.level, local.user, local.text)
        ) select local.query, to_json(_) as data from _
    ) select to_json(_) from _ into strict gar_insert.json;
end;$body$;
