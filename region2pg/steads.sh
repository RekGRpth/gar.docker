#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".steads (CONSTRAINT steads_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE INDEX IF NOT EXISTS steads_objectid_idx ON "$REGION".steads USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_objectguid_idx ON "$REGION".steads USING btree (objectguid);
CREATE INDEX IF NOT EXISTS steads_isactive_idx ON "$REGION".steads USING btree (isactive) WHERE NOT isactive;
EOF
