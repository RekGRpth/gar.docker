#!/bin/sh

set -eux
CSV="$1"
TABLE="${0%.*}"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="\"$DIR\".\"$TABLE\""; fi
COMMAND="$(cat <<EOF
CREATE TEMP TABLE tmp (LIKE $TABLE INCLUDING ALL) ON COMMIT DROP;
COPY tmp ("id","level","shortname","name","desc","updatedate","startdate","enddate","isactive")
FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ("id","level","shortname","name","updatedate","startdate","enddate","isactive"));
INSERT INTO $TABLE SELECT "id","level","shortname","name","desc","updatedate","startdate","enddate","isactive" FROM tmp ON CONFLICT ("id") DO UPDATE SET "level"=EXCLUDED."level","shortname"=EXCLUDED."shortname","name"=EXCLUDED."name","desc"=EXCLUDED."desc","updatedate"=EXCLUDED."updatedate","startdate"=EXCLUDED."startdate","enddate"=EXCLUDED."enddate","isactive"=EXCLUDED."isactive";
DELETE FROM $TABLE WHERE NOT isactive;
EOF
)"
exec psql --no-password --variable=ON_ERROR_STOP=1 --variable=DIR="$DIR" --command="$COMMAND" <"$CSV"
