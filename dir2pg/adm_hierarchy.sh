#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".adm_hierarchy (INHERITS adm_hierarchy);
CREATE INDEX IF NOT EXISTS adm_hierarchy_objectid_idx ON "$DIR".adm_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_parentobjid_idx ON "$DIR".adm_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON "$DIR".adm_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
