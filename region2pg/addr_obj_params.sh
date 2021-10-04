#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".addr_obj_params (INHERITS addr_obj_params);
CREATE INDEX IF NOT EXISTS addr_obj_params_objectid_idx ON "$REGION".addr_obj_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_params_typeid_idx ON "$REGION".addr_obj_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS addr_obj_params_startdate_idx ON "$REGION".addr_obj_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS addr_obj_params_enddate_idx ON "$REGION".addr_obj_params USING btree (enddate);
EOF
