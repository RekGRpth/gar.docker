#!/bin/sh

set -eux
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
--truncate table gar
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
    left join gar on gar.parent = addr_obj_parent.objectguid and gar.name = addr_obj.name and gar.type = addr_obj_types.name
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate and addr_obj.level = 1
    and gar.id is null
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
    left join gar on gar.parent = addr_obj_parent.objectguid and gar.name = addr_obj.name and gar.type = addr_obj_types.name
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate
    and gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
EOF
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        steads.objectguid AS id,
        steads_parent.objectguid AS parent,
        steads.number AS name,
        'уч' AS short,
        'Участок' AS type,
        steads_params.value AS post
    FROM "${DIR}".steads as steads
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = steads.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as steads_parent on steads_parent.objectid = adm_hierarchy.parentobjid and steads_parent.isactive = 1 and steads_parent.isactual = 1 and current_timestamp between steads_parent.startdate and steads_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".steads_params as steads_params on steads_params.objectid = steads.objectid and steads_params.typeid = param_types.id and current_timestamp between steads_params.startdate and steads_params.enddate
    WHERE steads.isactive = 1 and steads.isactual = 1 and current_timestamp between steads.startdate and steads.enddate
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
    left join gar on gar.parent = houses.objectguid and gar.name = concat_ws(', ', houses.housenum, case when houses.addnum1 is not null then concat(case when coalesce(house_types1.id, houses.housetype) = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when houses.addnum2 is not null then concat(case when coalesce(house_types2.id, houses.housetype) = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) and gar.type = house_types.name
    WHERE houses.isactive = 1 and houses.isactual = 1 and current_timestamp between houses.startdate and houses.enddate
    and gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
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
    left join "${DIR}".houses as carplaces_parent on carplaces_parent.objectid = adm_hierarchy.parentobjid and carplaces_parent.isactive = 1 and carplaces_parent.isactual = 1 and current_timestamp between carplaces_parent.startdate and carplaces_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".carplaces_params as carplaces_params on carplaces_params.objectid = carplaces.objectid and carplaces_params.typeid = param_types.id and current_timestamp between carplaces_params.startdate and carplaces_params.enddate
    WHERE carplaces.isactive = 1 and carplaces.isactual = 1 and current_timestamp between carplaces.startdate and carplaces.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        apartments.objectguid AS id,
        apartments_parent.objectguid AS parent,
        apartments.number AS name,
        rtrim(apartment_types.shortname, '.') AS short,
        apartment_types.name AS type,
        apartments_params.value AS post
    FROM "${DIR}".apartments as apartments
    inner JOIN apartment_types ON apartment_types.id = apartments.aparttype and apartment_types.isactive --and current_timestamp between apartment_types.startdate and apartment_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".houses as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid and apartments_parent.isactive = 1 and apartments_parent.isactual = 1 and current_timestamp between apartments_parent.startdate and apartments_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".apartments_params as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id and current_timestamp between apartments_params.startdate and apartments_params.enddate
    WHERE apartments.isactive = 1 and apartments.isactual = 1 and current_timestamp between apartments.startdate and apartments.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        rooms.objectguid AS id,
        rooms_parent.objectguid AS parent,
        rooms.number AS name,
        rtrim(room_types.shortname, '.') AS short,
        room_types.name AS type,
        rooms_params.value AS post
    FROM "${DIR}".rooms as rooms
    inner JOIN room_types ON room_types.id = rooms.roomtype and room_types.isactive --and current_timestamp between room_types.startdate and room_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = rooms.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".apartments as rooms_parent on rooms_parent.objectid = adm_hierarchy.parentobjid and rooms_parent.isactive = 1 and rooms_parent.isactual = 1 and current_timestamp between rooms_parent.startdate and rooms_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".rooms_params as rooms_params on rooms_params.objectid = rooms.objectid and rooms_params.typeid = param_types.id and current_timestamp between rooms_params.startdate and rooms_params.enddate
    WHERE rooms.isactive = 1 and rooms.isactual = 1 and current_timestamp between rooms.startdate and rooms.enddate
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null and short is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post
EOF
