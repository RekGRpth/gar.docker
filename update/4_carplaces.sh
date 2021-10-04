#!/bin/sh

set -eux
trap "exit 255" ERR
REGION="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
    SELECT DISTINCT ON (id)
        carplaces.objectguid AS id,
        carplaces_parent.objectguid AS parent,
        carplaces.number AS name,
        'м-м' AS short,
        'Машино-место' AS type,
        carplaces_params.value AS post
    FROM "$REGION".carplaces AS carplaces
    LEFT JOIN "$REGION".adm_hierarchy AS adm_hierarchy ON adm_hierarchy.objectid = carplaces.objectid
    LEFT JOIN "$REGION".houses AS carplaces_parent ON carplaces_parent.objectid = adm_hierarchy.parentobjid
    LEFT JOIN "$REGION".carplaces_params AS carplaces_params ON carplaces_params.objectid = carplaces.objectid AND carplaces_params.typeid = 5
    WHERE carplaces_parent.objectguid IS NOT NULL;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
