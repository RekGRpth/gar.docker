#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
SELECT distinct on (id)
    apartments.objectguid AS id,
    apartments_parent.objectguid AS parent,
    apartments.number AS name,
    rtrim(apartment_types.shortname, '.') AS short,
    apartment_types.name AS type,
    apartments_params.value AS post
FROM "${DIR}".apartments as apartments
inner JOIN apartment_types ON apartment_types.id = apartments.aparttype
left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = apartments.objectid
left join "${DIR}".houses as apartments_parent on apartments_parent.objectid = adm_hierarchy.parentobjid
left join param_types on param_types.name = 'Почтовый индекс'
left join "${DIR}".apartments_params as apartments_params on apartments_params.objectid = apartments.objectid and apartments_params.typeid = param_types.id
WHERE apartments_parent.objectguid is not null;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i on conflict on constraint gar_pkey do nothing;
EOF
