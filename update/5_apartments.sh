#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
    SELECT DISTINCT ON (id)
        apartments.objectguid AS id,
        apartments_parent.objectguid AS parent,
        apartments.number AS name,
        rtrim(apartment_types.shortname, '.') AS short,
        apartment_types.name AS type,
        apartments_params.value AS post
    FROM "$REGION".apartments AS apartments
    INNER JOIN apartment_types ON apartment_types.id = apartments.aparttype
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = apartments.objectid
    LEFT JOIN "$REGION".houses AS apartments_parent ON apartments_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".apartments_params AS apartments_params ON apartments_params.objectid = apartments.objectid AND apartments_params.typeid = 5
    WHERE apartments_parent.objectguid IS NOT NULL
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g USING (id) WHERE (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar SELECT s.* FROM s LEFT JOIN gar AS g USING (id) WHERE g.id IS NULL RETURNING *
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING *
) SELECT $REGION AS region, count(i.*) AS inserted, count(u.*) AS updated FROM i, u;
EOF
