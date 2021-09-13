#!/bin/sh

set -eux
DIR="$1"
exec > >(trap "" INT TERM; sed "s|^|$DIR.apartments: |")
exec 2> >(trap "" INT TERM; sed "s|^|$DIR.apartments: (stderr) |" >&2)
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
    inner JOIN apartment_types ON apartment_types.id = apartments.aparttype and apartment_types.isactive --and current_timestamp between apartment_types.startdate and apartment_types.enddate
    left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid and adm_hierarchy.isactive = 1 and current_timestamp between adm_hierarchy.startdate and adm_hierarchy.enddate
    left join "${DIR}".houses as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid and apartments_parent.isactive = 1 and apartments_parent.isactual = 1 and current_timestamp between apartments_parent.startdate and apartments_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".apartments_params as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id and current_timestamp between apartments_params.startdate and apartments_params.enddate
    left join g on g.parent = apartments_parent.objectguid and g.name = apartments.number and g.type = apartment_types.name
    WHERE apartments.isactive = 1 and apartments.isactual = 1 and current_timestamp between apartments.startdate and apartments.enddate
    and g.id is null
) insert into gar SELECT distinct on (parent, name, type) * from _ WHERE parent is not null on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post, object = EXCLUDED.object, region = EXCLUDED.region;
EOF
