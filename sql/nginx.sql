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
    term text default nullif(trim(gar_select.json->>'term'), ''); -- строка поиска
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
                        select * from gar_select(local.id::uuid, null)
                    ) select count(1), gar_select.json as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(json_agg(_), '[]'::json) from _
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
                select * from gar_select(local.parent::uuid, local.name, local.short, local.type, local.post, local.object, local.region)
            ) select count(1), gar_select.json as query, local.offset, local.limit, (
                with _ as (
                    select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                ) select coalesce(json_agg(_), '[]'::json) from _
            ) as data from _
        ) select to_json(_) from _ into strict gar_select.json;
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
CREATE OR REPLACE FUNCTION gar_widget(INOUT json json) RETURNS json LANGUAGE plpgsql AS $BODY$ <<local>> DECLARE
    id text default nullif(trim(gar_widget.json->>'uuid'), ''); -- уид
    parent uuid default nullif(trim(gar_widget.json->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(gar_widget.json->>'name'), ''); -- наименование
    short text default nullif(trim(gar_widget.json->>'short'), ''); -- кратко
    type text default nullif(trim(gar_widget.json->>'type'), ''); -- тип
    post text default nullif(trim(gar_widget.json->>'port'), ''); -- индекс
    object text default nullif(trim(gar_widget.json->>'object'), ''); -- объект
    region text default nullif(trim(gar_widget.json->>'region'), ''); -- регион
    offset int default coalesce(nullif(trim(gar_widget.json->>'offset'), '')::int, 0); -- офсет
    limit int default coalesce(nullif(trim(gar_widget.json->>'limit'), '')::int, 10); -- лимит
    term text default nullif(trim(gar_widget.json->>'term'), ''); -- строка поиска
    /*add boolean default coalesce(nullif(trim(gar_widget.json->>'add'), '')::boolean, false); -- добавление?
    parent_type text default (select type from gar where id = local.parent); -- тип родителя
    find_child boolean default parent_type is not null and parent_type in ('Дом', 'Подъезд', 'Этаж'); -- искать все дочерние?*/
begin
    /*if add then -- если добавление
        json = gar_insert(json);
        return;
    end if;*/
    if term is not null then -- если искать что-то
        local.name = term;
        local.short = split_part(local.name, '.', 1);
        if local.short = local.name or position(' ' in local.short) > 0 or position(',' in local.short) > 0 then
            local.short = null;
        else
            local.name = split_part(local.name, '.', 2);
        end if;
        local.name = ltrim(local.name, ' ');
    end if;
    /*if find_child then -- если искать все дочерние
        local.type = translate(local.type, '[]','{}');
        with _ as (
            with _ as (
                select * from gar_select_child(local.parent, local.name, local.short, local.type, local.post, local.object, local.region)
            ) select count(1), gar_widget.json as query, local.offset, local.limit, (
                with _ as (
                    select * from _ offset local.offset limit local.limit
                ) select coalesce(json_agg((select json_agg(_) from (
                    select * from gar_select(_.id, local.parent)
                ) as _)), '[]'::json) from _
            ) as data from _
        ) select to_json(_) from _ into strict json;
    els*/if term is not null and local.parent is null then -- если искать что-то и родитель не задан
        with _ as (
            with _ as (
                select * from gar_select_parent(local.parent, local.name, local.short, array['Город', 'Поселок', 'Поселение', 'Деревня', 'Населенный пункт', 'Село', 'Рабочий поселок', 'Поселок городского типа']::text, local.post, local.object, local.region)
            ) select count(1), gar_widget.json as query, local.offset, local.limit, (
                with _ as (
                    select * from _ offset local.offset limit local.limit
                ) select coalesce(json_agg((select json_agg(_) from (
                    select * from gar_select(_.id, local.parent)
                ) as _)), '[]'::json) from _
            ) as data from _
        ) select to_json(_) from _ into strict json;
    else
        json = gar_select(json);
        return;
    end if;
    /*if (json->>'count')::int = 0 and find_child then -- если ничего не нашли и искать все дочерние
        local.id = "uuid-ossp".uuid_generate_v4();
        with _ as (
            with _ as (
                      select local.id, local.parent, local.name, 'кв' as short, 'Квартира' as type, 'кв.'||local.name as text, true as add, 902 as level where (local.short is null or 'кв' ilike local.short||'%')
                union select local.id, local.parent, local.name, 'оф' as short, 'Офис' as type, 'оф.'||local.name as text, true as add, 904 as level where (local.short is null or 'оф' ilike local.short||'%')
                union select local.id, local.parent, local.name, 'к' as short, 'Кабинет' as type, 'к.'||local.name as text, true as add, 997 as level where (local.short is null or 'к' ilike local.short||'%')
                union select local.id, local.parent, local.name, 'ком' as short, 'Комната' as type, 'ком.'||local.name as text, true as add, 903 as level where (local.short is null or 'ком' ilike local.short||'%')
                union select local.id, local.parent, local.name, 'п' as short, 'Подъезд' as type, 'п.'||local.name as text, true as add, 897 as level where (local.short is null or 'п' ilike local.short||'%') and parent_type = 'Дом'
                union select local.id, local.parent, local.name, 'э' as short, 'Этаж' as type, 'э.'||local.name as text, true as add, 898 as level where (local.short is null or 'э' ilike local.short||'%') and parent_type in ('Дом', 'Подъезд')
            ) select gar_widget.json as query, json_agg(_) as data from _
        ) select to_json(_) from _ into strict json;
    end if;*/
end;$BODY$
