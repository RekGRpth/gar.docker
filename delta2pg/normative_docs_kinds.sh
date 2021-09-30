#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="$1"
CSV="$2"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name"));
INSERT INTO $TABLE SELECT "id","name" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "name"=EXCLUDED."name";

EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
