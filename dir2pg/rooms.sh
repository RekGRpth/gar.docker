#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".rooms (INHERITS rooms);
CREATE INDEX IF NOT EXISTS rooms_objectid_idx ON "$DIR".rooms USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_objectguid_idx ON "$DIR".rooms USING btree (objectguid);
CREATE INDEX IF NOT EXISTS rooms_roomtype_idx ON "$DIR".rooms USING btree (roomtype);
CREATE INDEX IF NOT EXISTS rooms_isactive_idx ON "$DIR".rooms USING btree (isactive) WHERE NOT isactive;
EOF
