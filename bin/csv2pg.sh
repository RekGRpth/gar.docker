#!/bin/sh -eux

CSV="$1"
TABLE="$2"
FIELDS="$3"
FORCE_NOT_NULL="$4"
UPDATE="$5"
PRIMARY="$6"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
if [ -n "$UPDATE" ]; then
    COMMAND="CREATE TEMP TABLE tmp (LIKE \"$TABLE\" INCLUDING ALL) ON COMMIT DROP;COPY tmp ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));INSERT INTO \"$TABLE\" SELECT $FIELDS FROM tmp ON CONFLICT ($PRIMARY) DO UPDATE SET $UPDATE;"
else
    COMMAND="COPY \"$TABLE\" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));"
fi
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
