#!/bin/sh -eux

TABLE="$1"
CSV="$2"
XSD="/usr/local/xsd/$TABLE.xsd"
DIR="$(dirname -- "$CSV")"
DIR="$(basename -- "$DIR")"
if echo "$DIR" | grep -E "^\d\d$" >/dev/null; then TABLE="${TABLE}_$DIR"; fi
FIELDS="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | paste -sd ",")"
cat "$CSV" | psql --no-password --variable=ON_ERROR_STOP=1 --command="COPY $TABLE ($FIELDS) FROM stdin WITH (FORMAT csv, DELIMITER ';')"
