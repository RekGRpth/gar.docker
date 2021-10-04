#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".apartments INHERITS (apartments);
CREATE INDEX IF NOT EXISTS apartments_objectid_idx ON "$REGION".apartments USING btree (objectid);
CREATE INDEX IF NOT EXISTS apartments_objectguid_idx ON "$REGION".apartments USING btree (objectguid);
CREATE INDEX IF NOT EXISTS apartments_aparttype_idx ON "$REGION".apartments USING btree (aparttype);
CREATE INDEX IF NOT EXISTS apartments_isactive_idx ON "$REGION".apartments USING btree (isactive) WHERE NOT isactive;
EOF
