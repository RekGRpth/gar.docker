#!/bin/sh

set -eux
DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with g as (
    select * from gar where gar.object = 'houses' and gar.region = ${DIR} for update of gar skip locked
), _ as (
    SELECT
        houses.objectguid AS id,
        houses_parent.objectguid AS parent,
        concat_ws(', ', houses.housenum, case when houses.addnum1 is not null then concat(case when coalesce(house_types1.id, houses.housetype) = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when houses.addnum2 is not null then concat(case when coalesce(house_types2.id, houses.housetype) = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) AS name,
        rtrim(house_types.shortname, '.') AS short,
        house_types.name AS type,
        houses_params.value AS post,
        'houses'::object as object,
        ${DIR} as region
    FROM "${DIR}".houses as houses
    inner JOIN house_types ON house_types.id = houses.housetype and house_types.isactive --and current_timestamp between house_types.startdate and house_types.enddate
    left JOIN house_types as house_types1 ON house_types1.id = houses.addtype1 and house_types1.isactive --and current_timestamp between house_types1.startdate and house_types1.enddate
    left JOIN house_types as house_types2 ON house_types2.id = houses.addtype2 and house_types2.isactive --and current_timestamp between house_types2.startdate and house_types2.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = houses.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as houses_parent on houses_parent.objectid = adm_hierarchy.parentobjid and houses_parent.isactive = 1 and houses_parent.isactual = 1 and current_timestamp between houses_parent.startdate and houses_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".houses_params as houses_params on houses_params.objectid = houses.objectid and houses_params.typeid = param_types.id and current_timestamp between houses_params.startdate and houses_params.enddate
    left join g on g.parent = houses.objectguid and g.name = concat_ws(', ', houses.housenum, case when houses.addnum1 is not null then concat(case when coalesce(house_types1.id, houses.housetype) = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when houses.addnum2 is not null then concat(case when coalesce(house_types2.id, houses.housetype) = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) and g.type = house_types.name
    WHERE houses.isactive = 1 and houses.isactual = 1 and current_timestamp between houses.startdate and houses.enddate
    and g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
