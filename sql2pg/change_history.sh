#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS "${DIR}".change_history PARTITION OF change_history FOR VALUES IN (${DIR});
EOF
