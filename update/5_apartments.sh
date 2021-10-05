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
        rtrim(t.shortname, '.') AS short,
        t.name AS type,
        v.value AS post,
        'apartments'::object as object,
        $REGION as region
    FROM "$REGION".apartments AS o
    INNER JOIN apartment_types AS t ON t.id = o.aparttype
    LEFT JOIN "$REGION".adm_hierarchy AS h ON h.objectid = o.objectid
    LEFT JOIN "$REGION".houses AS p ON p.objectid = h.parentobjid
    LEFT JOIN "$REGION".apartments_params AS v ON v.objectid = o.objectid AND v.typeid = 5
    WHERE p.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g ON g.id = s.id AND g.object = 'addr_obj' AND g.region = $REGION AND (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar AS g SELECT s.* FROM s LEFT JOIN gar AS g ON g.id = s.id WHERE g.id IS NULL RETURNING g.*, 'insert' as command
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING g.*, 'update' as command
) SELECT $REGION AS region, command, count(*) FROM u GROUP BY command UNION SELECT $REGION AS region, command, count(*) FROM i GROUP BY command;
EOF
