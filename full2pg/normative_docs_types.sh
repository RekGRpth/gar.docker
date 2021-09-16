#!/bin/sh

set -eux
CSV="$1"
TABLE="${0%.*}"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".\"$TABLE\""; fi
COMMAND="$(cat <<EOF
TRUNCATE TABLE ONLY $TABLE RESTART IDENTITY;
COPY $TABLE ("id","name","startdate","enddate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","startdate","enddate"))
WHERE current_timestamp between startdate::date and enddate::date;
EOF
)"
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
