#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="$1"
CSV="$2"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","level","shortname","name","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","level","shortname","name","updatedate","startdate","enddate","isactive"));
INSERT INTO $TABLE SELECT "id","level","shortname","name","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "level"=EXCLUDED."level","shortname"=EXCLUDED."shortname","name"=EXCLUDED."name","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
