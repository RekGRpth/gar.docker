#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".houses_params (CONSTRAINT houses_params_pkey PRIMARY KEY (id)) INHERITS (houses_params);
CREATE INDEX IF NOT EXISTS houses_params_objectid_idx ON "$REGION".houses_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_params_typeid_idx ON "$REGION".houses_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS houses_params_startdate_idx ON "$REGION".houses_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS houses_params_enddate_idx ON "$REGION".houses_params USING btree (enddate);
EOF
