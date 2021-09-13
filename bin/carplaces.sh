#!/bin/sh

set -eux
DIR="$1"
exec > >(trap "" INT TERM; sed "s|^|$DIR.carplaces: |")
exec 2> >(trap "" INT TERM; sed "s|^|$DIR.carplaces: (stderr) |" >&2)
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
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
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = carplaces.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".houses as carplaces_parent on carplaces_parent.objectid = adm_hierarchy.parentobjid and carplaces_parent.isactive = 1 and carplaces_parent.isactual = 1 and current_timestamp between carplaces_parent.startdate and carplaces_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".carplaces_params as carplaces_params on carplaces_params.objectid = carplaces.objectid and carplaces_params.typeid = param_types.id and current_timestamp between carplaces_params.startdate and carplaces_params.enddate
    left join gar on gar.parent = carplaces_parent.objectguid and gar.name = carplaces.number and gar.type = 'Машино-место' and gar.object = 'carplaces' and gar.region = ${DIR}
    WHERE carplaces.isactive = 1 and carplaces.isactual = 1 and current_timestamp between carplaces.startdate and carplaces.enddate
    and gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
