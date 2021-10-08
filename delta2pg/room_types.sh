#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE room_types INCLUDING ALL);
COPY tmp ("id","name","shortname","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","updatedate","startdate","enddate","isactive"));
INSERT INTO room_types SELECT "id","name","shortname","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ON CONSTRAINT room_types_pkey DO UPDATE SET
"name"=EXCLUDED."name","shortname"=EXCLUDED."shortname","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM room_types WHERE NOT isactive;
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
