#!/bin/sh -eux

xsd="$1"
xml="$2"
record="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/@name --output / --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/@name "${xsd}")"
fields="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --output " @" --value-of @name "${xsd}")"
cat "${xml}" | xml2 | 2csv -q "" -d ";" "${record}"${fields} >"${xml%.*}.csv"
