#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE "$REGION".tmp (LIKE "$REGION".adm_hierarchy INCLUDING ALL);
COPY "$REGION".tmp ("id","objectid","parentobjid","changeid","regioncode","areacode","citycode","placecode","plancode","streetcode","previd","nextid","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeid","updatedate","startdate","enddate","isactive"));
INSERT INTO "$REGION".adm_hierarchy SELECT "id","objectid","parentobjid","changeid","regioncode","areacode","citycode","placecode","plancode","streetcode","previd","nextid","updatedate","startdate","enddate","isactive" FROM "$REGION".tmp ON CONFLICT ON CONSTRAINT adm_hierarchy_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","parentobjid"=EXCLUDED."parentobjid","changeid"=EXCLUDED."changeid","regioncode"=EXCLUDED."regioncode","areacode"=EXCLUDED."areacode","citycode"=EXCLUDED."citycode","placecode"=EXCLUDED."placecode","plancode"=EXCLUDED."plancode","streetcode"=EXCLUDED."streetcode","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM "$REGION".adm_hierarchy WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
