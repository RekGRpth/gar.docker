#!/bin/sh

set -eux
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post
    FROM "${DIR}".addr_obj as addr_obj
    inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename and addr_obj_types.isactive --and current_timestamp between addr_obj_types.startdate and addr_obj_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = addr_obj.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as addr_obj_parent on addr_obj_parent.objectid = adm_hierarchy.parentobjid and addr_obj_parent.isactive = 1 and addr_obj_parent.isactual = 1 and current_timestamp between addr_obj_parent.startdate and addr_obj_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate and addr_obj.level = 1
) insert into gar SELECT distinct on (parent, name, type) * from _ on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
with _ as (
    SELECT
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post
    FROM "${DIR}".addr_obj as addr_obj
    inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename and addr_obj_types.isactive --and current_timestamp between addr_obj_types.startdate and addr_obj_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = addr_obj.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as addr_obj_parent on addr_obj_parent.objectid = adm_hierarchy.parentobjid and addr_obj_parent.isactive = 1 and addr_obj_parent.isactual = 1 and current_timestamp between addr_obj_parent.startdate and addr_obj_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ on WHERE parent is not null oconflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        carplaces.objectguid AS id,
        carplaces_parent.objectguid AS parent,
        carplaces.number AS name,
        'м-м' AS short,
        'Машино-место' AS type,
        carplaces_params.value AS post
    FROM "${DIR}".carplaces as carplaces
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = carplaces.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".carplaces as carplaces_parent on carplaces_parent.objectid = adm_hierarchy.parentobjid and carplaces_parent.isactive = 1 and carplaces_parent.isactual = 1 and current_timestamp between carplaces_parent.startdate and carplaces_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".carplaces_params as carplaces_params on carplaces_params.objectid = carplaces.objectid and carplaces_params.typeid = param_types.id and current_timestamp between carplaces_params.startdate and carplaces_params.enddate
    WHERE carplaces.isactive = 1 and carplaces.isactual = 1 and current_timestamp between carplaces.startdate and carplaces.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        houses.objectguid AS id,
        houses_parent.objectguid AS parent,
        concat_ws(', ', houses.housenum, case when houses.addnum1 is not null then concat(case when coalesce(house_types1.id, houses.housetype) = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when houses.addnum2 is not null then concat(case when coalesce(house_types2.id, houses.housetype) = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) AS name,
        rtrim(house_types.shortname, '.') AS short,
        house_types.name AS type,
        houses_params.value AS post
    FROM "${DIR}".houses as houses
    inner JOIN house_types ON house_types.id = houses.housetype and house_types.isactive --and current_timestamp between house_types.startdate and house_types.enddate
    left JOIN house_types as house_types1 ON house_types1.id = houses.addtype1 and house_types1.isactive --and current_timestamp between house_types1.startdate and house_types1.enddate
    left JOIN house_types as house_types2 ON house_types2.id = houses.addtype2 and house_types2.isactive --and current_timestamp between house_types2.startdate and house_types2.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = houses.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as houses_parent on houses_parent.objectid = adm_hierarchy.parentobjid and houses_parent.isactive = 1 and houses_parent.isactual = 1 and current_timestamp between houses_parent.startdate and houses_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".houses_params as houses_params on houses_params.objectid = houses.objectid and houses_params.typeid = param_types.id and current_timestamp between houses_params.startdate and houses_params.enddate
    WHERE houses.isactive = 1 and houses.isactual = 1 and current_timestamp between houses.startdate and houses.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
