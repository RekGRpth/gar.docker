#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
COMMAND="$(cat <<EOF
COPY $TABLE ("id","level","shortname","name","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","level","shortname","name","updatedate","startdate","enddate","isactive"))
WHERE isactive::bool;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
