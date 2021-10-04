#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".carplaces (CONSTRAINT carplaces_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE INDEX IF NOT EXISTS carplaces_objectid_idx ON "$REGION".carplaces USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_objectguid_idx ON "$REGION".carplaces USING btree (objectguid);
CREATE INDEX IF NOT EXISTS carplaces_isactive_idx ON "$REGION".carplaces USING btree (isactive) WHERE NOT isactive;
EOF
