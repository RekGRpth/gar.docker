#!/bin/sh

set -eux
DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
with g as (
    select * from gar where gar.object = 'apartments' and gar.region = ${DIR} for update of gar skip locked
), _ as (
    SELECT
        apartments.objectguid AS id,
        apartments_parent.objectguid AS parent,
        apartments.number AS name,
        rtrim(apartment_types.shortname, '.') AS short,
        apartment_types.name AS type,
        apartments_params.value AS post,
        'apartments'::object as object,
        ${DIR} as region
    FROM "${DIR}".apartments as apartments
    inner JOIN apartment_types ON apartment_types.id = apartments.aparttype
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid
    left join "${DIR}".houses as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid
    left join param_types on param_types.name = 'Почтовый индекс'
    left join "${DIR}".apartments_params as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id and current_timestamp between apartments_params.startdate and apartments_params.enddate
    left join g on g.parent = apartments_parent.objectguid and g.name = apartments.number and g.type = apartment_types.name
    WHERE g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
