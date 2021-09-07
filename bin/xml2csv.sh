#!/bin/sh -eux

TABLE="$1"
RECORD="$2"
FIELDS="$3"
XML="$4"
xml2 <"$XML" | 2csv -d "	" "${RECORD}"${FIELDS} >"${XML%.*}.csv"
