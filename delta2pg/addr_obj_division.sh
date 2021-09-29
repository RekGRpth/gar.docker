#!/bin/sh

set -eux
trap "exit 255" ERR
TABLE="\"$1\""
CSV="$2"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","parentid","childid","changeid","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","parentid","childid","changeid","region"));
INSERT INTO $TABLE SELECT "id","parentid","childid","changeid" FROM tmp ON CONFLICT ("id") DO UPDATE SET "parentid"=EXCLUDED."parentid","childid"=EXCLUDED."childid","changeid"=EXCLUDED."changeid","region"=EXCLUDED."region";

EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
