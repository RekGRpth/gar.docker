#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS "${DIR}".carplaces_params PARTITION OF carplaces_params FOR VALUES IN (${DIR});
EOF
