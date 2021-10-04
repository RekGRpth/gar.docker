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
COPY tmp ("id","parentid","childid","changeid")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","parentid","childid","changeid"));
INSERT INTO $TABLE SELECT "id","parentid","childid","changeid" FROM tmp ON CONFLICT ON CONSTRAINT ${TABLE}_pkey DO UPDATE SET "parentid"=EXCLUDED."parentid","childid"=EXCLUDED."childid","changeid"=EXCLUDED."changeid";

EOF
)"
psql --variable=ON_ERROR_STOP=1 --command="$COMMAND" <"$CSV"
rm -f "$CSV"
