#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="$1"
CSV="$2"
REGION="$(dirname -- "$CSV")"
REGION="$(basename -- "$REGION")"
if echo "$REGION" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$REGION\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","date","number","type","kind","updatedate"));
INSERT INTO $TABLE SELECT "id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "name"=EXCLUDED."name","date"=EXCLUDED."date","number"=EXCLUDED."number","type"=EXCLUDED."type","kind"=EXCLUDED."kind","updatedate"=EXCLUDED."updatedate","orgname"=EXCLUDED."orgname","regnum"=EXCLUDED."regnum","regdate"=EXCLUDED."regdate","accdate"=EXCLUDED."accdate","comment"=EXCLUDED."comment";

EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
