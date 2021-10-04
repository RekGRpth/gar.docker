#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
COPY $TABLE ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive"))
WHERE isactive::bool;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
