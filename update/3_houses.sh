#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
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
    WHERE houses_parent.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g USING (id) WHERE (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar SELECT s.* FROM s LEFT JOIN gar AS g USING (id) WHERE g.id IS NULL RETURNING *
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING *
) SELECT $REGION AS region, count(i.*) AS inserted, count(u.*) AS updated FROM i, u;
EOF
