#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMPORARY TABLE t AS SELECT DISTINCT ON (id)
    o.objectguid AS id,
    p.objectguid AS parent,
    o.number AS name,
    'уч' AS short,
    'Участок' AS type,
    v.value AS post,
    'steads'::object as object,
    $REGION as region
FROM "$REGION".steads AS o
LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
LEFT JOIN "$REGION".addr_obj AS p ON p.objectid = h.parentobjid
LEFT JOIN "$REGION".steads_params AS v ON v.objectid = o.objectid AND v.typeid = 5
INNER JOIN gar AS g ON g.id = o.objectguid AND g.object = 'steads' AND g.region = $REGION
WHERE p.objectguid IS NOT NULL AND (p.objectguid, o.number, 'уч', 'Участок', v.value) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post);
WITH _ AS (
    UPDATE gar AS g SET parent = t.parent, name = t.name, short = t.short, type = t.type FROM t AS t WHERE g.id = t.id RETURNING *
) SELECT 'steads' AS object, $REGION AS region, 'update' as command, count(*) FROM _;
EOF
