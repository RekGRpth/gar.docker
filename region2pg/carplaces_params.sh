#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".carplaces_params (CONSTRAINT carplaces_params_pkey PRIMARY KEY (id)) INHERITS (carplaces_params);
CREATE INDEX IF NOT EXISTS carplaces_params_objectid_idx ON "$REGION".carplaces_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_params_typeid_idx ON "$REGION".carplaces_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS carplaces_params_startdate_idx ON "$REGION".carplaces_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS carplaces_params_enddate_idx ON "$REGION".carplaces_params USING btree (enddate);
EOF
