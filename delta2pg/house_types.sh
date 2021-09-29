#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","shortname","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","updatedate","startdate","enddate","isactive"));
INSERT INTO $TABLE SELECT "id","name","shortname","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ("id") DO UPDATE SET "name"=EXCLUDED."name","shortname"=EXCLUDED."shortname","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
