#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE "$REGION".steads);
COPY tmp ("id","objectid","objectguid","changeid","number","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","objectguid","changeid","number","opertypeid","updatedate","startdate","enddate","isactual","isactive"));
INSERT INTO "$REGION".steads SELECT "id","objectid","objectguid","changeid","number","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive" FROM tmp ON CONFLICT ON CONSTRAINT steads_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","objectguid"=EXCLUDED."objectguid","changeid"=EXCLUDED."changeid","number"=EXCLUDED."number","opertypeid"=EXCLUDED."opertypeid","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactual"=EXCLUDED."isactual","isactive"=EXCLUDED."isactive";
DELETE FROM "$REGION".steads WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
