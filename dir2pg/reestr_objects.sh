#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".reestr_objects (INHERITS reestr_objects);
CREATE INDEX IF NOT EXISTS reestr_objects_isactive_idx ON "$DIR".reestr_objects USING btree (isactive) WHERE NOT isactive;
EOF
