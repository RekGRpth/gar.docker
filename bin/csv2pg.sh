#!/bin/sh -eux

CSV="$1"
TABLE="$2"
FIELDS="$3"
FORCE_NOT_NULL="$4"
UPDATE="$5"
FULL="$6"
if [ -n "$FULL" ]; then
    exec psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY \"$TABLE\" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));" <"$CSV"
else
    exec psql --no-password --variable=ON_ERROR_STOP=1 --command="CREATE TEMP TABLE tmp (LIKE \"$TABLE\" INCLUDING ALL) ON COMMIT DROP;COPY tmp ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));INSERT INTO \"$TABLE\" SELECT $FIELDS FROM tmp ON CONFLICT DO UPDATE SET $UPDATE;" <"$CSV"
fi
