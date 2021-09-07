#!/bin/sh -eux

TABLE="$1"
XML="$2"
XSD="/usr/local/xsd/$TABLE.xsd"
RECORD="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/@name --output / --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/@name "$XSD")"
FIELDS="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --output " @" --value-of @name "$XSD")"
xml2 <"$XML" | 2csv -d "	" "${RECORD}"${FIELDS} >"${XML%.*}.csv"
