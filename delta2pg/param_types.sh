#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE param_types INCLUDING ALL);
COPY tmp ("id","name","code","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","code","updatedate","startdate","enddate","isactive"));
INSERT INTO param_types SELECT "id","name","code","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT param_types_pkey DO UPDATE SET
"name"=EXCLUDED."name","code"=EXCLUDED."code","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM param_types WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
