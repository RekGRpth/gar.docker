#!/bin/sh -eux

TABLE="$1"
CSV="$2"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -E "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
cat "$CSV" | psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY $TABLE FROM stdin"
