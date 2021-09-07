#!/bin/sh -eux

TABLE="$1"
FIELDS="$2"
FORCE_NOT_NULL="$3"
TRUNCATE="$4"
CSV="$5"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
if [ -n "$TRUNCATE" ]; then
    psql --no-password --variable=ON_ERROR_STOP=1 --command="TRUNCATE TABLE ONLY \"$TABLE\" RESTART IDENTITY CASCADE"
fi
psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY \"$TABLE\" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL))" <"$CSV"
