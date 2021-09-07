#!/bin/sh -eux

TABLE="$1"
RECORD="$2"
FIELDS="$3"
XML="$4"
exec xml2 <"$XML" | tr -d "\t" | 2csv -d "	" "${RECORD}"${FIELDS} >"${XML%.*}.csv"
