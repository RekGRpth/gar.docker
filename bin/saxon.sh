#!/bin/sh -eux

FILE="$1"
XSLT="$2"
java -jar saxon-he-10.5.jar -s:"${FILE}" -xsl:"${XSLT}" -o:"${FILE%.*}.sql"
