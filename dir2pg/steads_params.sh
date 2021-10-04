#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".steads_params (INHERITS steads_params);
CREATE INDEX IF NOT EXISTS steads_params_objectid_idx ON "$DIR".steads_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_params_typeid_idx ON "$DIR".steads_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS steads_params_startdate_idx ON "$DIR".steads_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS steads_params_enddate_idx ON "$DIR".steads_params USING btree (enddate);
EOF
