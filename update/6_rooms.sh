#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
SELECT distinct on (id)
    rooms.objectguid AS id,
    rooms_parent.objectguid AS parent,
    rooms.number AS name,
    rtrim(coalesce(room_types.shortname, ''), '.') AS short,
    room_types.name AS type,
    rooms_params.value AS post
FROM "${DIR}".rooms as rooms
inner JOIN room_types ON room_types.id = rooms.roomtype
left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = rooms.objectid
left join "${DIR}".apartments as rooms_parent on rooms_parent.objectid = adm_hierarchy.parentobjid
left join param_types on param_types.name = 'Почтовый индекс'
left join "${DIR}".rooms_params as rooms_params on rooms_params.objectid = rooms.objectid and rooms_params.typeid = param_types.id
WHERE rooms_parent.objectguid is not null;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g skip locked
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
