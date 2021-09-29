#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
TABLE="\"$(basename -- "${0%.*}")\""
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
COPY $TABLE ("id","objectid","changeid","changeidend","typeid","value","updatedate","startdate","enddate","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeidend","typeid","value","updatedate","startdate","enddate","region"))
WHERE current_timestamp between startdate::date and enddate::date;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
