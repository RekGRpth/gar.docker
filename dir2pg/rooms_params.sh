#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".rooms_params (INHERITS rooms_params);
CREATE INDEX IF NOT EXISTS rooms_params_objectid_idx ON "$DIR".rooms_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_params_typeid_idx ON "$DIR".rooms_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS rooms_params_startdate_idx ON "$DIR".rooms_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_params_enddate_idx ON "$DIR".rooms_params USING btree (enddate);
EOF
