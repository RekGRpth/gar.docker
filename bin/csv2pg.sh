#!/bin/sh -eux

xsd="$1"
csv="$2"
record="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/@name --output / --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/@name "${xsd}")"
fields="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --output " @" --value-of @name "${xsd}")"
cat "${xml}" | xml2 | 2csv -q "" -d ";" "${record}"${fields} >"${xml%.*}.csv"

#!/bin/sh

FILE="$1"
FILE="${FILE%.*}"
exec 2>&1
set -ex
psql -h /run/postgresql -d fias -U dbf -w -A -v ON_ERROR_STOP=1 -q -t -f "$FILE.sql"
rm -f "$FILE.sql"
