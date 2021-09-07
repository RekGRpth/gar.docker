#!/bin/sh -eux

TABLE="$1"
FIELDS="$2"
FORCE_NOT_NULL="$3"
UPDATE="$4"
TRUNCATE="$5"
CSV="$6"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -P "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
if [ -n "$TRUNCATE" ]; then
    psql --no-password --variable=ON_ERROR_STOP=1 --command="TRUNCATE TABLE ONLY \"$TABLE\" RESTART IDENTITY CASCADE"
    exec psql --no-password --variable=ON_ERROR_STOP=1 <"$CSV" --command=<<EOF
COPY "$TABLE" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));
EOF
else
    exec psql --no-password --variable=ON_ERROR_STOP=1 <"$CSV" --command=<<EOF
CREATE TEMP TABLE tmp (LIKE "$TABLE" INCLUDING ALL) ON COMMIT DROP;
COPY tmp ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER E'\t', QUOTE E'\b', FORCE_NOT_NULL ($FORCE_NOT_NULL));
INSERT INTO "$TABLE" SELECT $FIELDS FROM tmp ON CONFLICT DO UPDATE SET $UPDATE;
EOF
fi
