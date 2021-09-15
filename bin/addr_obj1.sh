#!/bin/sh

set -eux
DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with g as (
    select * from gar where gar.object = 'addr_obj' and gar.region = ${DIR} for update of gar skip locked
), _ as (
    SELECT
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post,
        'addr_obj'::object as object,
        ${DIR} as region
    FROM "${DIR}".addr_obj as addr_obj
    inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = addr_obj.objectid
    left join "${DIR}".addr_obj as addr_obj_parent on addr_obj_parent.objectid = adm_hierarchy.parentobjid
    left join param_types on param_types.name = 'Почтовый индекс'
    left join "${DIR}".addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
    left join g on g.parent = addr_obj_parent.objectguid and g.name = addr_obj.name and g.type = addr_obj_types.name
    WHERE g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
