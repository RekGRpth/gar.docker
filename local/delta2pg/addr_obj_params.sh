#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE "$REGION".tmp (LIKE "$REGION".addr_obj_params);
COPY "$REGION".tmp ("id","objectid","changeid","changeidend","typeid","value","updatedate","startdate","enddate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeidend","typeid","value","updatedate","startdate","enddate"));
INSERT INTO "$REGION".addr_obj_params SELECT "id","objectid","changeid","changeidend","typeid","value","updatedate","startdate","enddate" FROM "$REGION".tmp ON CONFLICT ON CONSTRAINT addr_obj_params_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","changeid"=EXCLUDED."changeid","changeidend"=EXCLUDED."changeidend","typeid"=EXCLUDED."typeid","value"=EXCLUDED."value","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate";
DELETE FROM "$REGION".addr_obj_params WHERE NOT current_timestamp between startdate and enddate;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
