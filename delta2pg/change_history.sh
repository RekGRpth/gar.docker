#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE "$REGION".tmp (LIKE "$REGION".change_history);
COPY "$REGION".tmp ("changeid","objectid","adrobjectid","opertypeid","ndocid","changedate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("changeid","objectid","adrobjectid","opertypeid","changedate"));
INSERT INTO "$REGION".change_history SELECT "changeid","objectid","adrobjectid","opertypeid","ndocid","changedate" FROM "$REGION".tmp ON CONFLICT ON CONSTRAINT change_history_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","adrobjectid"=EXCLUDED."adrobjectid","opertypeid"=EXCLUDED."opertypeid","ndocid"=EXCLUDED."ndocid","changedate"=EXCLUDED."changedate";
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
