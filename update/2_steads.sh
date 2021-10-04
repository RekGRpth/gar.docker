#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
SELECT distinct on (id)
    steads.objectguid AS id,
    steads_parent.objectguid AS parent,
    steads.number AS name,
    'уч' AS short,
    'Участок' AS type,
    steads_params.value AS post
FROM "${REGION}".steads as steads
left join "${REGION}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = steads.objectid
left join "${REGION}".addr_obj as steads_parent on steads_parent.objectid = adm_hierarchy.parentobjid
left join param_types on param_types.name = 'Почтовый индекс'
left join "${REGION}".steads_params as steads_params on steads_params.objectid = steads.objectid and steads_params.typeid = param_types.id
WHERE steads_parent.objectguid is not null;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
