#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
REGION="$(dirname -- "$XML")"
REGION="$(basename -- "$REGION")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" PARAMS/PARAM @ID @OBJECTID @CHANGEID @CHANGEIDEND @TYPEID @VALUE @UPDATEDATE @STARTDATE @ENDDATE \
    >"${XML%.*}.csv"
rm -f "$XML"
