#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMP TABLE t AS SELECT DISTINCT ON (id)
    o.objectguid::uuid AS id,
    p.objectguid::uuid AS parent,
    o.number::text AS name,
    rtrim(coalesce(t.shortname, ''), '.')::text AS short,
    t.name::text AS type,
    v.value::text AS post,
    $REGION::smallint as region
FROM "$REGION".rooms AS o
INNER JOIN room_types AS t ON t.id = o.roomtype
LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
LEFT JOIN "$REGION".apartments AS p ON p.objectid = h.parentobjid
LEFT JOIN "$REGION".rooms_params AS v ON v.objectid = o.objectid AND v.typeid = 5
WHERE p.objectguid IS NOT NULL;
INSERT INTO "update" SELECT t.* FROM t INNER JOIN gar AS g ON g.id = t.id AND g.region = t.region WHERE (t.parent, t.name, t.short, t.type, t.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post);
INSERT INTO "insert" SELECT t.* FROM t LEFT JOIN gar AS g ON g.id = t.id AND g.region = t.region WHERE g.id IS NULL;
EOF