#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
    SELECT DISTINCT ON (id)
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
    WHERE p.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g ON g.id = s.id AND g.object = 'steads' AND g.region = $REGION WHERE (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar AS g SELECT s.* FROM s LEFT JOIN gar AS g ON g.id = s.id AND g.object = 'steads' AND g.region = $REGION WHERE g.id IS NULL RETURNING g.*, 'insert' as command
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING g.*, 'update' as command
) SELECT $REGION AS region, command, count(*) FROM u GROUP BY command UNION SELECT $REGION AS region, command, count(*) FROM i GROUP BY command;
EOF
