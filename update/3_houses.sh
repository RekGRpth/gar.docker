#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 --single-transaction <<EOF
CREATE TEMPORARY TABLE s ON COMMIT DROP as
SELECT distinct on (id)
    houses.objectguid AS id,
    houses_parent.objectguid AS parent,
    concat_ws(', ', houses.housenum, case when houses.addnum1 is not null then concat(case when coalesce(house_types1.id, houses.housetype) = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when houses.addnum2 is not null then concat(case when coalesce(house_types2.id, houses.housetype) = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) AS name,
    rtrim(house_types.shortname, '.') AS short,
    house_types.name AS type,
    houses_params.value AS post
FROM "${DIR}".houses as houses
inner JOIN house_types ON house_types.id = houses.housetype
left JOIN house_types as house_types1 ON house_types1.id = houses.addtype1
left JOIN house_types as house_types2 ON house_types2.id = houses.addtype2
left join "${DIR}".adm_hierarchy as adm_hierarchy on adm_hierarchy.objectid = houses.objectid
left join "${DIR}".addr_obj as houses_parent on houses_parent.objectid = adm_hierarchy.parentobjid
left join param_types on param_types.name = 'Почтовый индекс'
left join "${DIR}".houses_params as houses_params on houses_params.objectid = houses.objectid and houses_params.typeid = param_types.id
WHERE houses_parent.objectguid is not null;
CREATE TEMPORARY TABLE u ON COMMIT DROP as select s.* from s inner join gar as g using (id) where (s.parent, s.name, s.short, s.type, s.post) is distinct from (g.parent, g.name, g.short, g.type, g.post);
CREATE TEMPORARY TABLE i ON COMMIT DROP as select s.* from s left join gar as g using (id) where g.id is null;
with u as (
    select u.* from gar as g inner join u using (id) for update of g
) update gar as g set parent = u.parent, name = u.name, short = u.short, type = u.type from u where g.id = u.id;
insert into gar select * from i;
EOF
