#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
if echo "$REGION" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$REGION\".$TABLE"; fi
COMMAND="$(cat <<EOF
COPY $TABLE ("changeid","objectid","adrobjectid","opertypeid","ndocid","changedate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("changeid","objectid","adrobjectid","opertypeid","changedate"))
;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
