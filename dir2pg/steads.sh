#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".steads (INHERITS steads);
CREATE INDEX IF NOT EXISTS steads_objectid_idx ON "$DIR".steads USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_objectguid_idx ON "$DIR".steads USING btree (objectguid);
CREATE INDEX IF NOT EXISTS steads_isactive_idx ON "$DIR".steads USING btree (isactive) WHERE NOT isactive;
EOF
