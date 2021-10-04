#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
REGION="$(dirname -- "$XML")"
REGION="$(basename -- "$REGION")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" ITEMS/ITEM @ID @PARENTID @CHILDID @CHANGEID \
    >"${XML%.*}.csv"
rm -f "$XML"
