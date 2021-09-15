#!/bin/sh

set -eux
CSV="$1"
TABLE="$2"
FIELDS="$3"
FORCE_NOT_NULL="$4"
ISACTIVE="$5"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"${DIR}\".$TABLE"; fi
if [ -n "$ISACTIVE" ]; then ISACTIVE="WHERE isactive::bool" fi
COMMAND="TRUNCATE TABLE ONLY $TABLE RESTART IDENTITY;COPY $TABLE ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL)) $ISACTIVE;"
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
