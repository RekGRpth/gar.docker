#!/bin/sh

set -eux
DIR="$1"
exec > >(trap "" INT TERM; sed "s|^|$DIR.steads: |")
exec 2> >(trap "" INT TERM; sed "s|^|$DIR.steads: (stderr) |" >&2)
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with _ as (
    SELECT
        steads.objectguid AS id,
        steads_parent.objectguid AS parent,
        steads.number AS name,
        'уч' AS short,
        'Участок' AS type,
        steads_params.value AS post,
        'steads'::object as object,
        ${DIR} as region
    FROM "${DIR}".steads as steads
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = steads.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".addr_obj as steads_parent on steads_parent.objectid = adm_hierarchy.parentobjid and steads_parent.isactive = 1 and steads_parent.isactual = 1 and current_timestamp between steads_parent.startdate and steads_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".steads_params as steads_params on steads_params.objectid = steads.objectid and steads_params.typeid = param_types.id and current_timestamp between steads_params.startdate and steads_params.enddate
    left join gar on gar.parent = steads_parent.objectguid and gar.name = steads.number and gar.type = 'Участок' and gar.object = 'steads' and gar.region = ${DIR}
    WHERE steads.isactive = 1 and steads.isactual = 1 and current_timestamp between steads.startdate and steads.enddate
    and gar.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
