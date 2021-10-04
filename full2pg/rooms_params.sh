#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
if echo "$REGION" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$REGION\".$TABLE"; fi
COMMAND="$(cat <<EOF
COPY $TABLE ("id","objectid","changeid","changeidend","typeid","value","updatedate","startdate","enddate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeidend","typeid","value","updatedate","startdate","enddate"))
WHERE current_timestamp between startdate::date and enddate::date;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
