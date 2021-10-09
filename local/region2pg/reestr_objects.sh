#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".reestr_objects (CONSTRAINT reestr_objects_pkey PRIMARY KEY (objectid)) INHERITS (reestr_objects);
CREATE INDEX IF NOT EXISTS reestr_objects_isactive_idx ON "$REGION".reestr_objects USING btree (isactive) WHERE NOT isactive;
EOF
