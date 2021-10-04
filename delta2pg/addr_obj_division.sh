#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE "$REGION".addr_obj_division INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","parentid","childid","changeid")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","parentid","childid","changeid"));
INSERT INTO "$REGION".addr_obj_division SELECT "id","parentid","childid","changeid" FROM tmp ON CONFLICT ON CONSTRAINT addr_obj_division_pkey DO UPDATE SET
"parentid"=EXCLUDED."parentid","childid"=EXCLUDED."childid","changeid"=EXCLUDED."changeid";
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
