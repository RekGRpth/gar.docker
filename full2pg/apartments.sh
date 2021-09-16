#!/bin/sh

set -eux
CSV="$1"
TABLE="${0%.*}"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".\"$TABLE\""; fi
COMMAND="$(cat <<EOF
TRUNCATE TABLE ONLY $TABLE RESTART IDENTITY;
COPY $TABLE ("id", "objectid", "objectguid", "changeid", "number", "aparttype", "opertypeid", "previd", "nextid", "updatedate", "startdate", "enddate", "isactual", "isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id", "objectid", "objectguid", "changeid", "number", "aparttype", "opertypeid", "updatedate", "startdate", "enddate", "isactual", "isactive"))
WHERE isactive::bool;
EOF
)"
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
