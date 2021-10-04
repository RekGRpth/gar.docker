#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".addr_obj_division INHERITS (addr_obj_division);
EOF
