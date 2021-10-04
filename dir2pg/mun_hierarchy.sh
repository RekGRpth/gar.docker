#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".mun_hierarchy (INHERITS mun_hierarchy);
CREATE INDEX IF NOT EXISTS mun_hierarchy_objectid_idx ON "$DIR".mun_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_parentobjid_idx ON "$DIR".mun_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_isactive_idx ON "$DIR".mun_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
