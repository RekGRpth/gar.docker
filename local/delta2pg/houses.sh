#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE "$REGION".houses);
COPY tmp ("id","objectid","objectguid","changeid","housenum","addnum1","addnum2","housetype","addtype1","addtype2","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","objectguid","changeid","opertypeid","updatedate","startdate","enddate","isactual","isactive"));
INSERT INTO "$REGION".houses SELECT "id","objectid","objectguid","changeid","housenum","addnum1","addnum2","housetype","addtype1","addtype2","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive" FROM tmp ON CONFLICT ON CONSTRAINT houses_pkey DO UPDATE SET
"objectid"=EXCLUDED."objectid","objectguid"=EXCLUDED."objectguid","changeid"=EXCLUDED."changeid","housenum"=EXCLUDED."housenum","addnum1"=EXCLUDED."addnum1","addnum2"=EXCLUDED."addnum2","housetype"=EXCLUDED."housetype","addtype1"=EXCLUDED."addtype1","addtype2"=EXCLUDED."addtype2","opertypeid"=EXCLUDED."opertypeid","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactual"=EXCLUDED."isactual","isactive"=EXCLUDED."isactive";
DELETE FROM "$REGION".houses WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
