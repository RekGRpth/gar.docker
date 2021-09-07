#!/bin/sh -eux

XML="$1"
RECORD="$2"
FIELDS="$3"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" "$RECORD"$FIELDS >"${XML%.*}.csv"
