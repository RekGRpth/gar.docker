#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".rooms_params (CONSTRAINT rooms_params_pkey PRIMARY KEY (id)) INHERITS (rooms_params);
CREATE INDEX IF NOT EXISTS rooms_params_objectid_idx ON "$REGION".rooms_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_params_typeid_idx ON "$REGION".rooms_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS rooms_params_startdate_idx ON "$REGION".rooms_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_params_enddate_idx ON "$REGION".rooms_params USING btree (enddate);
EOF
