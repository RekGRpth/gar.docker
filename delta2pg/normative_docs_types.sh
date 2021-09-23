#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
TABLE="${0%.*}"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".\"$TABLE\""; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","startdate","enddate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","startdate","enddate"));
INSERT INTO $TABLE SELECT "id","name","startdate","enddate" FROM tmp ON CONFLICT ("id") DO UPDATE SET "name"=EXCLUDED."name","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate";
DELETE FROM $TABLE WHERE NOT current_timestamp between startdate and enddate;
EOF
)"
exec psql --no-password --variable=ON_ERROR_STOP=1 --variable=DIR="$DIR" --command="$COMMAND" <"$CSV"
