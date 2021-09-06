#!/bin/sh -eux

TABLE="$1"
CSV="$2"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -E "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
FIELDS="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed -uE 's|^(.+)$|"\1"|' | sed 's/\(.*\)/\L\1/' | paste -sd ",")"
deltaVersionId="$(cat .deltaVersionId)"
fullVersionId="$(cat .fullVersionId)"
if [ "$deltaVersionId" == "$fullVersionId" ]; then
    psql --no-password --variable=ON_ERROR_STOP=1 --command="TRUNCATE TABLE ONLY \"$TABLE\" RESTART IDENTITY CASCADE"
fi
cat "$CSV" | psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY \"$TABLE\" ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER ';')"
