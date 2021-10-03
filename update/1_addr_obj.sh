#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
SELECT distinct on (id)
    addr_obj.objectguid AS id,
    addr_obj_parent.objectguid AS parent,
    addr_obj.name AS name,
    rtrim(addr_obj_types.shortname, '.') AS short,
    addr_obj_types.name AS type,
    addr_obj_params.value AS post
FROM "${DIR}".addr_obj as addr_obj
inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename
left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = addr_obj.objectid
left join "${DIR}".addr_obj as addr_obj_parent on addr_obj_parent.objectid = adm_hierarchy.parentobjid
left join param_types on param_types.name = 'Почтовый индекс'
left join "${DIR}".addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id
WHERE (addr_obj.level = 1) or (addr_obj_parent.objectguid is not null);
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
