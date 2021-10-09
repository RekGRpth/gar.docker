#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".addr_obj_division (CONSTRAINT addr_obj_division_pkey PRIMARY KEY (id)) INHERITS (addr_obj_division);
EOF
