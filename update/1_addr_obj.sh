#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 <<EOF
WITH s AS (
    SELECT DISTINCT ON (id)
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post
    FROM "$REGION".addr_obj AS addr_obj
    INNER JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = addr_obj.objectid
    LEFT JOIN "$REGION".addr_obj AS addr_obj_parent ON addr_obj_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".addr_obj_params AS addr_obj_params ON addr_obj_params.objectid = addr_obj.objectid AND addr_obj_params.typeid = 5
    WHERE (addr_obj.level = 1) OR (addr_obj_parent.objectguid IS NOT NULL)
), o AS (
    SELECT s.* FROM s INNER JOIN gar AS g USING (id) WHERE (s.parent, s.name, s.short, s.type, s.post) IS DISTINCT FROM (g.parent, g.name, g.short, g.type, g.post) FOR UPDATE OF g SKIP LOCKED
), i AS (
    INSERT INTO gar SELECT s.* FROM s LEFT JOIN gar AS g USING (id) WHERE g.id IS NULL RETURNING *
), u AS (
    UPDATE gar AS g SET parent = o.parent, name = o.name, short = o.short, type = o.type FROM o WHERE g.id = o.id RETURNING *
) SELECT $REGION AS region, count(i.*) AS inserted, count(u.*) AS updated FROM i, u;
EOF
