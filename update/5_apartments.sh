#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
    SELECT DISTINCT ON (id)
        apartments.objectguid AS id,
        apartments_parent.objectguid AS parent,
        apartments.number AS name,
        rtrim(apartment_types.shortname, '.') AS short,
        apartment_types.name AS type,
        apartments_params.value AS post
    FROM "$REGION".apartments AS apartments
    INNER JOIN apartment_types ON apartment_types.id = apartments.aparttype
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = apartments.objectid
    LEFT JOIN "$REGION".houses AS apartments_parent ON apartments_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".apartments_params AS apartments_params ON apartments_params.objectid = apartments.objectid AND apartments_params.typeid = 5
    WHERE apartments_parent.objectguid IS NOT NULL;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
