#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".adm_hierarchy (INHERITS adm_hierarchy);
CREATE INDEX IF NOT EXISTS adm_hierarchy_objectid_idx ON "$REGION".adm_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_parentobjid_idx ON "$REGION".adm_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON "$REGION".adm_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
