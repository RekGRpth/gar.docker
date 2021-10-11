#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMP TABLE t AS SELECT DISTINCT ON (id)
    o.objectguid::uuid AS id,
    p.objectguid::uuid AS parent,
    concat_ws(', ', o.housenum, CASE WHEN o.addnum1 IS NOT NULL THEN concat(CASE WHEN coalesce(t1.id, o.housetype) = o.housetype THEN 'корп' ELSE rtrim(t1.shortname, '.') END, '.', o.addnum1) END, CASE WHEN o.addnum2 IS NOT NULL THEN concat(CASE WHEN coalesce(t2.id, o.housetype) = o.housetype THEN 'стр' ELSE rtrim(t2.shortname, '.') END, '.', o.addnum2) END)::text AS name,
    rtrim(t.shortname, '.')::text AS short,
    t.name::text AS type,
    v.value::text AS post,
    $REGION::smallint as region
FROM "$REGION".houses AS o
INNER JOIN house_types AS t ON t.id = o.housetype
LEFT JOIN house_types AS t1 ON t1.id = o.addtype1
LEFT JOIN house_types AS t2 ON t2.id = o.addtype2
LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
LEFT JOIN "$REGION".addr_obj AS p ON p.objectid = h.parentobjid
LEFT JOIN "$REGION".houses_params AS v ON v.objectid = o.objectid AND v.typeid = 5
WHERE p.objectguid IS NOT NULL;
INSERT INTO "update" SELECT t.* FROM t INNER JOIN gar AS g ON g.id = t.id AND g.region = t.region WHERE (t.parent, t.name, t.short, t.type, t.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post);
INSERT INTO "insert" SELECT t.* FROM t LEFT JOIN gar AS g ON g.id = t.id AND g.region = t.region WHERE g.id IS NULL;
EOF
