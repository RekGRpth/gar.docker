#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".mun_hierarchy (CONSTRAINT mun_hierarchy_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE INDEX IF NOT EXISTS mun_hierarchy_objectid_idx ON "$REGION".mun_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_parentobjid_idx ON "$REGION".mun_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_isactive_idx ON "$REGION".mun_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
