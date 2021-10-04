#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE "$REGION".reestr_objects INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive"));
INSERT INTO "$REGION".reestr_objects SELECT "objectid","createdate","changeid","levelid","updatedate","objectguid","isactive" FROM tmp ON CONFLICT ON CONSTRAINT reestr_objects_pkey DO UPDATE SET
"createdate"=EXCLUDED."createdate","changeid"=EXCLUDED."changeid","levelid"=EXCLUDED."levelid","updatedate"=EXCLUDED."updatedate","objectguid"=EXCLUDED."objectguid","isactive"=EXCLUDED."isactive";
DELETE FROM "$REGION".reestr_objects WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --single-transaction --command="$COMMAND" <"$CSV"
rm -f "$CSV"
