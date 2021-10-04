#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
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
    WHERE (addr_obj.level = 1) OR (addr_obj_parent.objectguid IS NOT NULL);
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
