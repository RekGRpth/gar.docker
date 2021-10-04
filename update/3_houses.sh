#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
    SELECT DISTINCT ON (id)
        houses.objectguid AS id,
        houses_parent.objectguid AS parent,
        concat_ws(', ', houses.housenum, CASE WHEN houses.addnum1 IS NOT NULL THEN concat(CASE WHEN coalesce(house_types1.id, houses.housetype) = houses.housetype THEN 'корп' ELSE rtrim(house_types1.shortname, '.') END, '.', houses.addnum1) END, CASE WHEN houses.addnum2 IS NOT NULL THEN concat(CASE WHEN coalesce(house_types2.id, houses.housetype) = houses.housetype THEN 'стр' ELSE rtrim(house_types2.shortname, '.') END, '.', houses.addnum2) END) AS name,
        rtrim(house_types.shortname, '.') AS short,
        house_types.name AS type,
        houses_params.value AS post
    FROM "$REGION".houses AS houses
    INNER JOIN house_types ON house_types.id = houses.housetype
    LEFT JOIN house_types AS house_types1 ON house_types1.id = houses.addtype1
    LEFT JOIN house_types AS house_types2 ON house_types2.id = houses.addtype2
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = houses.objectid
    LEFT JOIN "$REGION".addr_obj AS houses_parent ON houses_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".houses_params AS houses_params ON houses_params.objectid = houses.objectid AND houses_params.typeid = 5
    WHERE houses_parent.objectguid IS NOT NULL;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
