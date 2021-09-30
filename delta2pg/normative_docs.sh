#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="$1"
CSV="$2"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","name","date","number","type","kind","updatedate","region"));
INSERT INTO $TABLE SELECT "id","name","date","number","type","kind","updatedate","orgname","regnum","regdate","accdate","comment" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "name"=EXCLUDED."name","date"=EXCLUDED."date","number"=EXCLUDED."number","type"=EXCLUDED."type","kind"=EXCLUDED."kind","updatedate"=EXCLUDED."updatedate","orgname"=EXCLUDED."orgname","regnum"=EXCLUDED."regnum","regdate"=EXCLUDED."regdate","accdate"=EXCLUDED."accdate","comment"=EXCLUDED."comment","region"=EXCLUDED."region";

EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
