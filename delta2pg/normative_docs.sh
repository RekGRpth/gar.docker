#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE "$REGION".normative_docs INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","date","number","type","kind","updatedate"));
INSERT INTO "$REGION".normative_docs SELECT "id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment" FROM tmp ON CONFLICT ON CONSTRAINT normative_docs_pkey DO UPDATE SET
"name"=EXCLUDED."name","date"=EXCLUDED."date","number"=EXCLUDED."number","type"=EXCLUDED."type","kind"=EXCLUDED."kind","updatedate"=EXCLUDED."updatedate","orgname"=EXCLUDED."orgname","regnum"=EXCLUDED."regnum","regdate"=EXCLUDED."regdate","accdate"=EXCLUDED."accdate","comment"=EXCLUDED."comment";
EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
