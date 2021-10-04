#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".apartments (INHERITS apartments);
CREATE INDEX IF NOT EXISTS apartments_objectid_idx ON "$DIR".apartments USING btree (objectid);
CREATE INDEX IF NOT EXISTS apartments_objectguid_idx ON "$DIR".apartments USING btree (objectguid);
CREATE INDEX IF NOT EXISTS apartments_aparttype_idx ON "$DIR".apartments USING btree (aparttype);
CREATE INDEX IF NOT EXISTS apartments_isactive_idx ON "$DIR".apartments USING btree (isactive) WHERE NOT isactive;
EOF
