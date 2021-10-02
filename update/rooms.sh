#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
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
    inner JOIN room_types ON room_types.id = rooms.roomtype
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = rooms.objectid
    left join "${DIR}".apartments as rooms_parent on rooms_parent.objectid = adm_hierarchy.parentobjid
    left join param_types on param_types.name = 'Почтовый индекс'
    left join "${DIR}".rooms_params as rooms_params on rooms_params.objectid = rooms.objectid and rooms_params.typeid = param_types.id
    left join gar on gar.object = 'rooms' and gar.parent = rooms_parent.objectguid and gar.name = rooms.number and gar.type = room_types.name
    WHERE gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null and short is not null on conflict ON CONSTRAINT gar_pkey do update set
parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
