#!/bin/sh -eux

RECORD="$1"
FIELDS="$2"
XML="$3"
exec xml2 <"$XML" | tr -d "\t" | 2csv -d "	" "$RECORD"$FIELDS >"${XML%.*}.csv"
