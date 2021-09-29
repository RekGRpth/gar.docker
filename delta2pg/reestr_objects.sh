#!/bin/sh

set -eux
trap "exit 255" ERR
CSV="$1"
TABLE="\"${0%.*}\""
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".$TABLE"; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive","region")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("objectid","createdate","changeid","levelid","updatedate","objectguid","isactive","region"));
INSERT INTO $TABLE SELECT "objectid","createdate","changeid","levelid","updatedate","objectguid","isactive" FROM tmp ON CONFLICT ("objectid") DO UPDATE SET "createdate"=EXCLUDED."createdate","changeid"=EXCLUDED."changeid","levelid"=EXCLUDED."levelid","updatedate"=EXCLUDED."updatedate","objectguid"=EXCLUDED."objectguid","isactive"=EXCLUDED."isactive","region"=EXCLUDED."region";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
psql --no-password --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
