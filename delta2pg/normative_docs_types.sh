#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE normative_docs_types INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","startdate","enddate")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","startdate","enddate"));
INSERT INTO normative_docs_types SELECT "id","name","startdate","enddate" FROM tmp ON CONFLICT ON CONSTRAINT normative_docs_types_pkey DO UPDATE SET
"name"=EXCLUDED."name","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate";
DELETE FROM normative_docs_types WHERE NOT current_timestamp between startdate and enddate;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
