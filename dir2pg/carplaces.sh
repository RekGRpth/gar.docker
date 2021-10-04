#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".carplaces (INHERITS carplaces);
CREATE INDEX IF NOT EXISTS carplaces_objectid_idx ON "$DIR".carplaces USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_objectguid_idx ON "$DIR".carplaces USING btree (objectguid);
CREATE INDEX IF NOT EXISTS carplaces_isactive_idx ON "$DIR".carplaces USING btree (isactive) WHERE NOT isactive;
EOF
