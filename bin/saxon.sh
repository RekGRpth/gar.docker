#!/bin/sh -eux

XSLT="$1"
FILE="$2"
java -jar /usr/local/jar/saxon-he-10.5.jar -s:"${FILE}" -xsl:"${XSLT}" -o:"${FILE%.*}.sql"
