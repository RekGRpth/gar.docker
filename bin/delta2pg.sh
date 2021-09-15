#!/bin/sh

set -eux
CSV="$1"
TABLE="$2"
FIELDS="$3"
FORCE_NOT_NULL="$4"
UPDATE="$5"
PRIMARY="$6"
ISACTIVE="$7"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"${DIR}\".$TABLE"; fi
COMMAND="CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;COPY tmp ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));INSERT INTO $TABLE SELECT $FIELDS FROM tmp ON CONFLICT ($PRIMARY) DO UPDATE SET $UPDATE;"
if [ -n "$ISACTIVE" ]; then COMMAND="DELETE FROM $TABLE WHERE NOT isactive"; fi
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
