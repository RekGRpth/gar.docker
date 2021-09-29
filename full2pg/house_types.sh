#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
COMMAND="$(cat <<EOF
COPY $TABLE ("id","name","shortname","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","updatedate","startdate","enddate","isactive"))
WHERE isactive::bool;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
