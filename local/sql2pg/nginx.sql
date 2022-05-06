CREATE OR REPLACE FUNCTION gar_insert(INOUT jsonb jsonb) RETURNS jsonb LANGUAGE plpgsql AS $body$ <<local>> declare
    id uuid default nullif(trim(gar_insert.jsonb->>'id'), '')::uuid; -- уид
    parent uuid default nullif(trim(gar_insert.jsonb->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(gar_insert.jsonb->>'name'), ''); -- наименование
    short text default nullif(trim(gar_insert.jsonb->>'short'), ''); -- кратко
    type text default nullif(trim(gar_insert.jsonb->>'type'), ''); -- тип
    post text default nullif(trim(gar_insert.jsonb->>'port'), ''); -- индекс
    region text default nullif(trim(gar_insert.jsonb->>'region'), ''); -- регион
begin
    with _ as (
        with _ as (
            select * from gar_insert(local.id, local.parent, local.name, local.short, local.type, local.post, local.region)
        ) select gar_insert.jsonb as query, to_jsonb(_) as data from _
    ) select to_jsonb(_) from _ into strict gar_insert.jsonb;
end;$body$;
CREATE OR REPLACE FUNCTION gar_select(INOUT jsonb jsonb) RETURNS jsonb LANGUAGE plpgsql STABLE AS $body$ <<local>> declare
    id text default nullif(trim(gar_select.jsonb->>'id'), ''); -- уид
    parent text default nullif(trim(gar_select.jsonb->>'parent'), ''); -- уид родителя
    name text default nullif(trim(gar_select.jsonb->>'name'), ''); -- наименование
    short text default nullif(trim(gar_select.jsonb->>'short'), ''); -- кратко
    type text default nullif(trim(gar_select.jsonb->>'type'), ''); -- тип
    post text default nullif(trim(gar_select.jsonb->>'port'), ''); -- индекс
    region text default nullif(trim(gar_select.jsonb->>'region'), ''); -- регион
    text text default nullif(trim(gar_select.jsonb->>'text'), ''); -- строка поиска
    offset int default coalesce(nullif(trim(gar_select.jsonb->>'offset'), '')::int, 0); -- офсет
    limit int default coalesce(nullif(trim(gar_select.jsonb->>'limit'), '')::int, 10); -- лимит
    "full" boolean default coalesce(nullif(trim(gar_select.jsonb->>'full'), '')::boolean, false); -- все?
    child boolean default coalesce(nullif(trim(gar_select.jsonb->>'child'), '')::boolean, false); -- дети?
begin
    if local.id is not null then -- если задан id
        local.id = translate(local.id, '[]','{}');
        if local.id ilike '{%}' then -- если id - массив
            if local.full then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid[])
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg((select jsonb_agg(_) from (
                            select *, case when local.child then gar_child(_.id) end as child from gar_select(_.id::uuid)
                        ) as _)), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid[])
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg(_), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
            end if;
        else  -- иначе id - не массив
            if local.full then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid)
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg((select jsonb_agg(_) from (
                            select *, case when local.child then gar_child(_.id) end as child from gar_select(_.id::uuid)
                        ) as _)), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.id::uuid)
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg(_), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
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
                    select * from gar_select_parent(local.parent::uuid, local.name, local.short, array['Город', 'Поселок', 'Поселение', 'Деревня', 'Населенный пункт', 'Село', 'Рабочий поселок', 'Поселок городского типа']::text, local.post, local.region)
                ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                    with _ as (
                        select * from _ offset local.offset limit local.limit
                    ) select coalesce(jsonb_agg((select jsonb_agg(_) from (
                        select * from gar_select(_.id, local.parent::uuid)
                    ) as _)), '[]'::jsonb) from _
                ) as data from _
            ) select to_jsonb(_) from _ into strict jsonb;
        else
            local.type = translate(local.type, '[]','{}');
            if local.full then -- если все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.parent::uuid, local.name, local.short, local.type, local.post, local.region)
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select * from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg((select jsonb_agg(_) from (
                            select *, case when local.child then gar_child(_.id) end as child from gar_select(_.id::uuid)
                        ) as _)), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
            else -- иначе - не все результаты
                with _ as (
                    with _ as (
                        select * from gar_select(local.parent::uuid, local.name, local.short, local.type, local.post, local.region)
                    ) select count(1), gar_select.jsonb as query, local.offset, local.limit, (
                        with _ as (
                            select *, case when local.child then gar_child(_.id) end as child from _ offset local.offset limit local.limit
                        ) select coalesce(jsonb_agg(_), '[]'::jsonb) from _
                    ) as data from _
                ) select to_jsonb(_) from _ into strict gar_select.jsonb;
            end if;
        end if;
    end if;
end;$body$;
CREATE OR REPLACE FUNCTION gar_update(INOUT jsonb jsonb) RETURNS jsonb LANGUAGE plpgsql AS $body$ <<local>> declare
    id uuid default nullif(trim(gar_update.jsonb->>'id'), '')::uuid; -- уид
    parent uuid default nullif(trim(gar_update.jsonb->>'parent'), '')::uuid; -- уид родителя
    name text default nullif(trim(gar_update.jsonb->>'name'), ''); -- наименование
    short text default nullif(trim(gar_update.jsonb->>'short'), ''); -- кратко
    type text default nullif(trim(gar_update.jsonb->>'type'), ''); -- тип
    post text default nullif(trim(gar_update.jsonb->>'port'), ''); -- индекс
    region text default nullif(trim(gar_update.jsonb->>'region'), ''); -- регион
begin
    with _ as (
        with _ as (
            select * from gar_update(local.id, local.parent, local.name, local.short, local.type, local.post, local.region)
        ) select gar_update.jsonb as query, to_jsonb(_) as data from _
    ) select to_jsonb(_) from _ into strict gar_update.jsonb;
end;$body$;
