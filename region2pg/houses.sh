#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".houses (INHERITS houses);
CREATE INDEX IF NOT EXISTS houses_objectid_idx ON "$REGION".houses USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_objectguid_idx ON "$REGION".houses USING btree (objectguid);
CREATE INDEX IF NOT EXISTS houses_housetype_idx ON "$REGION".houses USING btree (housetype);
CREATE INDEX IF NOT EXISTS houses_isactive_idx ON "$REGION".houses USING btree (isactive) WHERE NOT isactive;
EOF
