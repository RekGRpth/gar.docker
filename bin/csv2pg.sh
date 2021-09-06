#!/bin/sh -eux

TABLE="$1"
CSV="$2"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if [ "$DIR" ~ [[:digit:]][[:digit:]] ]; then TABLE="${TABLE}_$DIR"; fi
cat "$CSV" | psql -w -A -v ON_ERROR_STOP=1 -q -t -c "COPY $TABLE FROM stdin"
