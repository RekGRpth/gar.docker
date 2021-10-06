#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMPORARY TABLE "$REGION".t AS SELECT DISTINCT ON (id)
    o.objectguid AS id,
    p.objectguid AS parent,
    concat_ws(', ', o.housenum, CASE WHEN o.addnum1 IS NOT NULL THEN concat(CASE WHEN coalesce(t1.id, o.housetype) = o.housetype THEN 'корп' ELSE rtrim(t1.shortname, '.') END, '.', o.addnum1) END, CASE WHEN o.addnum2 IS NOT NULL THEN concat(CASE WHEN coalesce(t2.id, o.housetype) = o.housetype THEN 'стр' ELSE rtrim(t2.shortname, '.') END, '.', o.addnum2) END) AS name,
    rtrim(t.shortname, '.') AS short,
    t.name AS type,
    v.value AS post,
    'houses'::object as object,
    $REGION as region
FROM "$REGION".houses AS o
INNER JOIN house_types AS t ON t.id = o.housetype
LEFT JOIN house_types AS t1 ON t1.id = o.addtype1
LEFT JOIN house_types AS t2 ON t2.id = o.addtype2
LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
LEFT JOIN "$REGION".addr_obj AS p ON p.objectid = h.parentobjid
LEFT JOIN "$REGION".houses_params AS v ON v.objectid = o.objectid AND v.typeid = 5
LEFT JOIN gar AS g ON g.id = o.objectguid AND g.object = 'houses' AND g.region = $REGION
WHERE p.objectguid IS NOT NULL AND g.id IS NULL;
WITH _ AS (
    INSERT INTO gar SELECT * FROM "$REGION".t RETURNING *
) SELECT 'houses' AS object, $REGION AS region, 'insert' as command, count(*) FROM _;
EOF
