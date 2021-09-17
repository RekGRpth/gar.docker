#!/bin/sh

set -eux
DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with g as (
    select * from gar where gar.object = 'steads' and gar.region = ${DIR} for update of gar skip locked
), _ as (
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
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = steads.objectid
    left join "${DIR}".addr_obj as steads_parent on steads_parent.objectid = adm_hierarchy.parentobjid
    left join param_types on param_types.name = 'Почтовый индекс'
    left join "${DIR}".steads_params as steads_params on steads_params.objectid = steads.objectid and steads_params.typeid = param_types.id
    left join g on g.parent = steads_parent.objectguid and g.name = steads.number and g.type = 'Участок'
    WHERE g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF