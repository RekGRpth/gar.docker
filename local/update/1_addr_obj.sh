#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
CREATE TEMP TABLE t AS SELECT DISTINCT ON (id)
    o.objectguid AS id,
    p.objectguid AS parent,
    o.name AS name,
    rtrim(t.shortname, '.') AS short,
    t.name AS type,
    v.value AS post,
    'addr_obj'::object as object,
    $REGION as region
FROM "$REGION".addr_obj AS o
INNER JOIN addr_obj_types AS t ON t.level = o.level AND t.shortname = o.typename
LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
LEFT JOIN "$REGION".addr_obj AS p ON p.objectid = h.parentobjid
LEFT JOIN "$REGION".addr_obj_params AS v ON v.objectid = o.objectid AND v.typeid = 5
INNER JOIN gar AS g ON g.id = o.objectguid AND g.object = 'addr_obj' AND g.region = $REGION
WHERE ((o.level = 1) OR (p.objectguid IS NOT NULL)) AND (p.objectguid, o.name, rtrim(t.shortname, '.'), t.name, v.value) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post);
UPDATE gar AS g SET parent = t.parent, name = t.name, short = t.short, type = t.type, post = t.post FROM t AS t WHERE g.id = t.id;
EOF
