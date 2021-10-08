#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE addr_obj_types INCLUDING ALL);
COPY tmp ("id","level","shortname","name","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","level","shortname","name","updatedate","startdate","enddate","isactive"));
INSERT INTO addr_obj_types SELECT "id","level","shortname","name","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT addr_obj_types_pkey DO UPDATE SET
"level"=EXCLUDED."level","shortname"=EXCLUDED."shortname","name"=EXCLUDED."name","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM addr_obj_types WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
