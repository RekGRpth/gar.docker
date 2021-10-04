#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".addr_obj (INHERITS addr_obj);
CREATE INDEX IF NOT EXISTS addr_obj_objectid_idx ON "$DIR".addr_obj USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_objectguid_idx ON "$DIR".addr_obj USING btree (objectguid);
CREATE INDEX IF NOT EXISTS addr_obj_typename_idx ON "$DIR".addr_obj USING btree (typename);
CREATE INDEX IF NOT EXISTS addr_obj_level_idx ON "$DIR".addr_obj" USING btree (level);
CREATE INDEX IF NOT EXISTS addr_obj_isactive_idx ON "$DIR".addr_obj USING btree (isactive) WHERE NOT isactive;
EOF
