#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
TABLE="\"$(basename -- "${0%.*}")\""
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("changeid","objectid","adrobjectid","opertypeid","ndocid","changedate","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("changeid","objectid","adrobjectid","opertypeid","changedate","region"));
INSERT INTO $TABLE SELECT "changeid","objectid","adrobjectid","opertypeid","ndocid","changedate" FROM tmp ON CONFLICT ("changeid") DO UPDATE SET "objectid"=EXCLUDED."objectid","adrobjectid"=EXCLUDED."adrobjectid","opertypeid"=EXCLUDED."opertypeid","ndocid"=EXCLUDED."ndocid","changedate"=EXCLUDED."changedate","region"=EXCLUDED."region";

EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
