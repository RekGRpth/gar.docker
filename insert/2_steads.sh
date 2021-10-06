#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMPORARY TABLE "$REGION".t AS SELECT DISTINCT ON (id)
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
LEFT JOIN gar AS g ON g.id = o.objectguid AND g.object = 'steads' AND g.region = $REGION
WHERE p.objectguid IS NOT NULL AND g.id IS NULL;
WITH _ AS (
    INSERT INTO gar SELECT * FROM "$REGION".t RETURNING *
) SELECT 'steads' AS object, $REGION AS region, 'insert' as command, count(*) FROM _;
EOF
