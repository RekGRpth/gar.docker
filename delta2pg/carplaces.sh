#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="$1"
CSV="$2"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","objectid","objectguid","changeid","number","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","objectid","objectguid","changeid","number","opertypeid","updatedate","startdate","enddate","isactual","isactive","region"));
INSERT INTO $TABLE SELECT "id","objectid","objectguid","changeid","number","opertypeid","previd","nextid","updatedate","startdate","enddate","isactual","isactive" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "objectid"=EXCLUDED."objectid","objectguid"=EXCLUDED."objectguid","changeid"=EXCLUDED."changeid","number"=EXCLUDED."number","opertypeid"=EXCLUDED."opertypeid","previd"=EXCLUDED."previd","nextid"=EXCLUDED."nextid","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactual"=EXCLUDED."isactual","isactive"=EXCLUDED."isactive","region"=EXCLUDED."region";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
