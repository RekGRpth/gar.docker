#!/bin/sh -eux

TABLE="$1"
FIELDS="$2"
FORCE_NOT_NULL="$3"
UPDATE="$4"
FULL="$5"
CSV="$6"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
if [ -n "$FULL" ]; then
    exec psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY \"$TABLE\" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));" <"$CSV"
else
    exec psql --no-password --variable=ON_ERROR_STOP=1 --command="CREATE TEMP TABLE tmp (LIKE \"$TABLE\" INCLUDING ALL) ON COMMIT DROP;COPY tmp ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));INSERT INTO \"$TABLE\" SELECT $FIELDS FROM tmp ON CONFLICT DO UPDATE SET $UPDATE;" <"$CSV"
fi
