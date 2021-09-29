#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","objectid","parentobjid","changeid","regioncode","areacode","citycode","placecode","plancode","streetcode","previd","nextid","updatedate","startdate","enddate","isactive","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","changeid","updatedate","startdate","enddate","isactive","region"));
INSERT INTO $TABLE SELECT "id","objectid","parentobjid","changeid","regioncode","areacode","citycode","placecode","plancode","streetcode","previd","nextid","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ("id") DO UPDATE SET "objectid"=EXCLUDED."objectid","parentobjid"=EXCLUDED."parentobjid","changeid"=EXCLUDED."changeid","regioncode"=EXCLUDED."regioncode","areacode"=EXCLUDED."areacode","citycode"=EXCLUDED."citycode","placecode"=EXCLUDED."placecode","plancode"=EXCLUDED."plancode","streetcode"=EXCLUDED."streetcode","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive","region"=EXCLUDED."region";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
