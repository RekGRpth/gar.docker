#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE operation_types INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","shortname","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","updatedate","startdate","enddate","isactive"));
INSERT INTO operation_types SELECT "id","name","shortname","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT operation_types_pkey DO UPDATE SET
"name"=EXCLUDED."name","shortname"=EXCLUDED."shortname","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM operation_types WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --single-transaction --command="$COMMAND" <"$CSV"
rm -f "$CSV"
