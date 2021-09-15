#!/bin/sh

set -eux
DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with g as (
    select * from gar where gar.object = 'carplaces' and gar.region = ${DIR} for update of gar skip locked
), _ as (
    SELECT
        carplaces.objectguid AS id,
        carplaces_parent.objectguid AS parent,
        carplaces.number AS name,
        'м-м' AS short,
        'Машино-место' AS type,
        carplaces_params.value AS post,
        'carplaces'::object as object,
        ${DIR} as region
    FROM "${DIR}".carplaces as carplaces
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = carplaces.objectid and adm_hierarchy.isactive
    left join "${DIR}".houses as carplaces_parent on carplaces_parent.objectid = adm_hierarchy.parentobjid and carplaces_parent.isactive
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive
    left join "${DIR}".carplaces_params as carplaces_params on carplaces_params.objectid = carplaces.objectid and carplaces_params.typeid = param_types.id
    left join g on g.parent = carplaces_parent.objectguid and g.name = carplaces.number and g.type = 'Машино-место'
    WHERE carplaces.isactive
    and g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
