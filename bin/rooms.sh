#!/bin/sh

set -eux
DIR="$1"
exec > >(trap "" INT TERM; sed "s|^|$DIR.rooms: |")
exec 2> >(trap "" INT TERM; sed "s|^|$DIR.rooms: (stderr) |" >&2)
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        rooms.objectguid AS id,
        rooms_parent.objectguid AS parent,
        rooms.number AS name,
        rtrim(room_types.shortname, '.') AS short,
        room_types.name AS type,
        rooms_params.value AS post,
        'rooms'::object as object,
        ${DIR} as region
    FROM "${DIR}".rooms as rooms
    inner JOIN room_types ON room_types.id = rooms.roomtype and room_types.isactive --and current_timestamp between room_types.startdate and room_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = rooms.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".apartments as rooms_parent on rooms_parent.objectid = adm_hierarchy.parentobjid and rooms_parent.isactive = 1 and rooms_parent.isactual = 1 and current_timestamp between rooms_parent.startdate and rooms_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".rooms_params as rooms_params on rooms_params.objectid = rooms.objectid and rooms_params.typeid = param_types.id and current_timestamp between rooms_params.startdate and rooms_params.enddate
    left join gar on gar.parent = rooms_parent.objectguid and gar.name = rooms.number and gar.type = room_types.name and gar.object = 'rooms' and gar.region = ${DIR}
    WHERE rooms.isactive = 1 and rooms.isactual = 1 and current_timestamp between rooms.startdate and rooms.enddate
    and gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null and short is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
