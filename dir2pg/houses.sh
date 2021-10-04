#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".houses (INHERITS houses);
CREATE INDEX IF NOT EXISTS houses_objectid_idx ON "$DIR".houses USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_objectguid_idx ON "$DIR".houses USING btree (objectguid);
CREATE INDEX IF NOT EXISTS houses_housetype_idx ON "$DIR".houses USING btree (housetype);
CREATE INDEX IF NOT EXISTS houses_isactive_idx ON "$DIR".houses USING btree (isactive) WHERE NOT isactive;
EOF
