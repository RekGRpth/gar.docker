#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".apartments_params INHERITS (apartments_params);
CREATE INDEX IF NOT EXISTS apartments_params_objectid_idx ON "$REGION".apartments_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS apartments_params_typeid_idx ON "$REGION".apartments_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS apartments_params_startdate_idx ON "$REGION".apartments_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS apartments_params_enddate_idx ON "$REGION".apartments_params USING btree (enddate);
EOF
