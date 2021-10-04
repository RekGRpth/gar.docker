#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".carplaces_params (INHERITS carplaces_params);
CREATE INDEX IF NOT EXISTS carplaces_params_objectid_idx ON "$DIR".carplaces_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_params_typeid_idx ON "$DIR".carplaces_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS carplaces_params_startdate_idx ON "$DIR".carplaces_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS carplaces_params_enddate_idx ON "$DIR".carplaces_params USING btree (enddate);
EOF
