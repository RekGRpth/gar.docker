CREATE SCHEMA IF NOT EXISTS nginx AUTHORIZATION nginx;
\connect gar nginx
CREATE OR REPLACE FUNCTION gar_insert(INOUT json json) RETURNS json LANGUAGE plpgsql AS $body$ <<local>> declare
    query json default gar_insert.json->'json_get_vars'; -- параметры запроса
    uuid uuid default nullif(trim(local.query->>'uuid'), '')::uuid; -- уид
    parent uuid default nullif(trim(local.query->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(local.query->>'name'), ''); -- наименование
    short text default nullif(trim(local.query->>'short'), ''); -- кратко
    type text default nullif(trim(local.query->>'type'), ''); -- тип
    post text default nullif(trim(local.query->>'port'), ''); -- индекс
begin
    with _ as (
        with _ as (
            select * from gar_insert(local.uuid, local.parent, local.name, local.short, local.type, local.post)
        ) select local.query, to_json(_) as data from _
    ) select to_json(_) from _ into strict gar_insert.json;
end;$body$;
CREATE OR REPLACE FUNCTION gar_select(INOUT json json) RETURNS json LANGUAGE plpgsql STABLE AS $body$ <<local>> declare
    query json default gar_select.json->'json_get_vars'; -- параметры запроса
    uuid uuid default nullif(trim(local.query->>'uuid'), '')::uuid; -- уид
    parent uuid default nullif(trim(local.query->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(local.query->>'name'), ''); -- наименование
    short text default nullif(trim(local.query->>'short'), ''); -- кратко
    type text default nullif(trim(local.query->>'type'), ''); -- тип
    post text default nullif(trim(local.query->>'port'), ''); -- индекс
    term text default nullif(trim(local.query->>'term'), ''); -- строка поиска
    offset int default coalesce(nullif(trim(local.query->>'offset'), '')::int, 0); -- офсет
    limit int default coalesce(nullif(trim(local.query->>'limit'), '')::int, 10); -- лимит
    "all" boolean default coalesce(nullif(trim(local.query->>'all'), '')::boolean, false); -- все?
    child boolean default coalesce(nullif(trim(local.query->>'child'), '')::boolean, false); -- дети?
begin
    if local.uuid is not null then -- если задан uuid
        local.uuid = translate(local.uuid, '[]','{}');
        if local.uuid ilike '{%}' then -- если uuid - массив
            if "all" then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.uuid::uuid[])
                    ) select count(1), local.query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg((select json_agg(_) from (
                            select *, case when local.child then gar_child(uuid) end as child from gar_select(_.uuid::uuid)
                        ) as _)), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.uuid::uuid[])
                    ) select count(1), local.query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(uuid) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            end if;
        else  -- иначе uuid - не массив
            if "all" then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.uuid::uuid, null)
                    ) select count(1), local.query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(uuid) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.uuid::uuid)
                    ) select count(1), local.query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(uuid) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            end if;
        end if;
    else -- иначе - не задан uuid
        if local.term is not null then -- если искать что-то
            local.name = term;
            local.short = split_part(local.name, '.', 1);
            if local.short = local.name or position(' ' in local.short) > 0 or position(',' in local.short) > 0 then
                local.short = null;
            else
                local.name = split_part(local.name, '.', 2);
            end if;
            local.name = ltrim(local.name, ' ');
        end if;
        local.type = translate(local.type, '[]','{}');
        with _ as (
            with _ as (
                select * from gar_select(local.parent, local.name, local.short, local.type, local.post)
            ) select count(1), local.query, local.offset, local.limit, (
                with _ as (
                    select *, case when local.child then gar_child(uuid) end as child from _ offset local.offset limit local.limit
                ) select coalesce(json_agg(_), '[]'::json) from _
            ) as data from _
        ) select to_json(_) from _ into strict gar_select.json;
    end if;
end;$body$;
CREATE OR REPLACE FUNCTION gar_update(INOUT json json) RETURNS json LANGUAGE plpgsql AS $body$ <<local>> declare
    query json default gar_update.json->'json_get_vars'; -- параметры запроса
    uuid uuid default nullif(trim(local.query->>'uuid'), '')::uuid; -- уид
    parent uuid default nullif(trim(local.query->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(local.query->>'name'), ''); -- наименование
    short text default nullif(trim(local.query->>'short'), ''); -- кратко
    type text default nullif(trim(local.query->>'type'), ''); -- тип
    post text default nullif(trim(local.query->>'port'), ''); -- индекс
begin
    with _ as (
        with _ as (
            select * from gar_update(local.uuid, local.parent, local.name, local.short, local.type, local.post)
        ) select local.query, to_json(_) as data from _
    ) select to_json(_) from _ into strict gar_update.json;
end;$body$;
