#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
COMMAND="$(cat <<EOF
COPY $TABLE ("id","name")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name"))
;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
