#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
    SELECT DISTINCT ON (id)
        rooms.objectguid AS id,
        rooms_parent.objectguid AS parent,
        rooms.number AS name,
        rtrim(coalesce(room_types.shortname, ''), '.') AS short,
        room_types.name AS type,
        rooms_params.value AS post,
        'rooms'::object as object,
        ${DIR} as region
    FROM "$REGION".rooms AS rooms
    INNER JOIN room_types ON room_types.id = rooms.roomtype
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = rooms.objectid
    LEFT JOIN "$REGION".apartments AS rooms_parent ON rooms_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".rooms_params AS rooms_params ON rooms_params.objectid = rooms.objectid AND rooms_params.typeid = 5
    WHERE rooms_parent.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g USING (id) WHERE g.object = 'rooms' AND g.region = $REGION AND (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar SELECT s.* FROM s LEFT JOIN gar AS g USING (id) WHERE g.id IS NULL RETURNING *
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING *
) SELECT $REGION AS region, count(i.*) AS inserted, count(u.*) AS updated FROM i, u;
EOF
