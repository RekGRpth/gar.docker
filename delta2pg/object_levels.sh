#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE object_levels);
COPY tmp ("level","name","shortname","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("level","name","updatedate","startdate","enddate","isactive"));
INSERT INTO object_levels SELECT "level","name","shortname","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT object_levels_pkey DO UPDATE SET
"name"=EXCLUDED."name","shortname"=EXCLUDED."shortname","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM object_levels WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
