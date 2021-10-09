#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE "$REGION".tmp (LIKE "$REGION".mun_hierarchy);
COPY "$REGION".tmp ("id","objectid","parentobjid","changeid","oktmo","previd","nextid","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeid","updatedate","startdate","enddate","isactive"));
INSERT INTO "$REGION".mun_hierarchy SELECT "id","objectid","parentobjid","changeid","oktmo","previd","nextid","updatedate","startdate","enddate","isactive" FROM "$REGION".tmp ON CONFLICT ON CONSTRAINT mun_hierarchy_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","parentobjid"=EXCLUDED."parentobjid","changeid"=EXCLUDED."changeid","oktmo"=EXCLUDED."oktmo","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM "$REGION".mun_hierarchy WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
