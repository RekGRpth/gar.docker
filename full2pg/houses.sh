#!/bin/sh

set -eux
CSV="$1"
TABLE="${0%.*}"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".\"$TABLE\""; fi
COMMAND="$(cat <<EOF
COPY $TABLE ("id","objectid","objectguid","changeid","housenum","addnum1","addnum2","housetype","addtype1","addtype2","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","objectguid","changeid","opertypeid","updatedate","startdate","enddate","isactual","isactive"))
WHERE isactive::bool;
EOF
)"
exec psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
