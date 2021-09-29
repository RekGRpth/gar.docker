#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
TABLE="\"${0%.*}\""
COMMAND="$(cat <<EOF
COPY $TABLE ("level","name","shortname","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("level","name","updatedate","startdate","enddate","isactive"))
WHERE isactive::bool;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
