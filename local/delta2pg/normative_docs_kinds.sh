#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE normative_docs_kinds);
COPY tmp ("id","name")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name"));
INSERT INTO normative_docs_kinds SELECT "id","name" FROM tmp ON CONFLICT ON CONSTRAINT normative_docs_kinds_pkey DO UPDATE SET "name"=EXCLUDED."name";
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
