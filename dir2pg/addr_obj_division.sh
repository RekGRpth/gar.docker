#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".addr_obj_division (INHERITS addr_obj_division);
EOF
