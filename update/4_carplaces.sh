#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
    SELECT DISTINCT ON (id)
        carplaces.objectguid AS id,
        carplaces_parent.objectguid AS parent,
        carplaces.number AS name,
        'м-м' AS short,
        'Машино-место' AS type,
        carplaces_params.value AS post,
        'carplaces'::object as object,
        ${DIR} as region
    FROM "$REGION".carplaces AS carplaces
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = carplaces.objectid
    LEFT JOIN "$REGION".houses AS carplaces_parent ON carplaces_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".carplaces_params AS carplaces_params ON carplaces_params.objectid = carplaces.objectid AND carplaces_params.typeid = 5
    WHERE carplaces_parent.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g USING (id) WHERE g.object = 'carplaces' AND g.region = $REGION AND (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar SELECT s.* FROM s LEFT JOIN gar AS g USING (id) WHERE g.id IS NULL RETURNING *
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING *
) SELECT $REGION AS region, count(i.*) AS inserted, count(u.*) AS updated FROM i, u;
EOF
