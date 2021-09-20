CREATE SCHEMA IF NOT EXISTS nginx AUTHORIZATION nginx;
\connect gar nginx
CREATE OR REPLACE FUNCTION gar_insert(INOUT json json) RETURNS json LANGUAGE plpgsql AS $body$ <<local>> declare
    id uuid default nullif(trim(gar_insert.json->>'id'), '')::uuid; -- уид
    parent uuid default nullif(trim(gar_insert.json->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(gar_insert.json->>'name'), ''); -- наименование
    short text default nullif(trim(gar_insert.json->>'short'), ''); -- кратко
    type text default nullif(trim(gar_insert.json->>'type'), ''); -- тип
    post text default nullif(trim(gar_insert.json->>'port'), ''); -- индекс
    object text default nullif(trim(gar_insert.json->>'object'), ''); -- объект
    region text default nullif(trim(gar_insert.json->>'region'), ''); -- регион
begin
    with _ as (
        with _ as (
            select * from gar_insert(local.id, local.parent, local.name, local.short, local.type, local.post, local.object, local.region)
        ) select gar_insert.json as query, to_json(_) as data from _
    ) select to_json(_) from _ into strict gar_insert.json;
end;$body$;
CREATE OR REPLACE FUNCTION gar_select(INOUT json json) RETURNS json LANGUAGE plpgsql STABLE AS $body$ <<local>> declare
    id text default nullif(trim(gar_select.json->>'id'), ''); -- уид
    parent text default nullif(trim(gar_select.json->>'parent'), ''); -- уид родителя
    name text default nullif(trim(gar_select.json->>'name'), ''); -- наименование
    short text default nullif(trim(gar_select.json->>'short'), ''); -- кратко
    type text default nullif(trim(gar_select.json->>'type'), ''); -- тип
    post text default nullif(trim(gar_select.json->>'port'), ''); -- индекс
    object text default nullif(trim(gar_select.json->>'object'), ''); -- объект
    region text default nullif(trim(gar_select.json->>'region'), ''); -- регион
    text text default nullif(trim(gar_select.json->>'text'), ''); -- строка поиска
    offset int default coalesce(nullif(trim(gar_select.json->>'offset'), '')::int, 0); -- офсет
    limit int default coalesce(nullif(trim(gar_select.json->>'limit'), '')::int, 10); -- лимит
    "all" boolean default coalesce(nullif(trim(gar_select.json->>'all'), '')::boolean, false); -- все?
    child boolean default coalesce(nullif(trim(gar_select.json->>'child'), '')::boolean, false); -- дети?
begin
    if local.id is not null then -- если задан id
        local.id = translate(local.id, '[]','{}');
        if local.id ilike '{%}' then -- если id - массив
            if "all" then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid[])
                    ) select count(1), gar_select.json as query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg((select json_agg(_) from (
                            select *, case when local.child then gar_child(_.id) end as child from gar_select(_.id::uuid)
                        ) as _)), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid[])
                    ) select count(1), gar_select.json as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            end if;
        else  -- иначе id - не массив
            if "all" then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid)
                    ) select count(1), gar_select.json as query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg((select json_agg(_) from (
                            select *, case when local.child then gar_child(_.id) end as child from gar_select(_.id::uuid)
                        ) as _)), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid)
                    ) select count(1), gar_select.json as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
                    ) as data from _
                ) select to_json(_) from _ into strict gar_select.json;
            end if;
        end if;
    else -- иначе - не задан id
        if local.text is not null then -- если искать что-то
            local.name = local.text;
            local.short = split_part(local.name, '.', 1);
            if local.short = local.name or position(' ' in local.short) > 0 or position(',' in local.short) > 0 then
                local.short = null;
            else
                local.name = split_part(local.name, '.', 2);
            end if;
            local.name = ltrim(local.name, ' ');
        end if;
        if local.text is not null and local.parent is null then -- если искать что-то и родитель не задан
            with _ as (
                with _ as (
                    select * from gar_select_parent(local.parent::uuid, local.name, local.short, array['Город', 'Поселок', 'Поселение', 'Деревня', 'Населенный пункт', 'Село', 'Рабочий поселок', 'Поселок городского типа']::text, local.post, local.object, local.region)
                ) select count(1), gar_select.json as query, local.offset, local.limit, (
                    with _ as (
                        select * from _ offset local.offset limit local.limit
                    ) select coalesce(json_agg((select json_agg(_) from (
                        select * from gar_select(_.id, local.parent::uuid)
                    ) as _)), '[]'::json) from _
                ) as data from _
            ) select to_json(_) from _ into strict json;
        else
            local.type = translate(local.type, '[]','{}');
            with _ as (
                with _ as (
                    select * from gar_select(local.parent::uuid, local.name, local.short, local.type, local.post, local.object, local.region)
                ) select count(1), gar_select.json as query, local.offset, local.limit, (
                    with _ as (
                        select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                    ) select coalesce(json_agg(_), '[]'::json) from _
                ) as data from _
            ) select to_json(_) from _ into strict gar_select.json;
        end if;
    end if;
end;$body$;
CREATE OR REPLACE FUNCTION gar_update(INOUT json json) RETURNS json LANGUAGE plpgsql AS $body$ <<local>> declare
    id uuid default nullif(trim(gar_update.json->>'id'), '')::uuid; -- уид
    parent uuid default nullif(trim(gar_update.json->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(gar_update.json->>'name'), ''); -- наименование
    short text default nullif(trim(gar_update.json->>'short'), ''); -- кратко
    type text default nullif(trim(gar_update.json->>'type'), ''); -- тип
    post text default nullif(trim(gar_update.json->>'port'), ''); -- индекс
    object text default nullif(trim(gar_update.json->>'object'), ''); -- объект
    region text default nullif(trim(gar_update.json->>'region'), ''); -- регион
begin
    with _ as (
        with _ as (
            select * from gar_update(local.id, local.parent, local.name, local.short, local.type, local.post, local.object, local.region)
        ) select gar_update.json as query, to_json(_) as data from _
    ) select to_json(_) from _ into strict gar_update.json;
end;$body$;
