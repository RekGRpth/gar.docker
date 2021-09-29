#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".gar PARTITION OF gar (CONSTRAINT gar_pkey PRIMARY KEY (id)) FOR VALUES IN (${DIR});
CREATE INDEX IF NOT EXISTS gar_parent_idx ON "${DIR}".gar USING btree (parent);
CREATE INDEX IF NOT EXISTS gar_name_idx ON "${DIR}".gar USING btree (name);
CREATE INDEX IF NOT EXISTS gar_short_idx ON "${DIR}".gar USING btree (short);
CREATE INDEX IF NOT EXISTS gar_type_idx ON "${DIR}".gar USING btree (type);
CREATE INDEX IF NOT EXISTS gar_object_idx ON "${DIR}".gar USING btree (object);
CREATE INDEX IF NOT EXISTS gar_region_idx ON "${DIR}".gar USING btree (region);
EOF
