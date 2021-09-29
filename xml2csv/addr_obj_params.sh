#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
TABLE="${0%.*}"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | sed -E "s|(/PARAMS/PARAM/)(@ENDDATE=.+)|\1\2\n\1@OBJECT=$TABLE\n\1@REGION=$DIR|" \
    | 2csv -d "	" PARAMS/PARAM @ID @OBJECTID @CHANGEID @CHANGEIDEND @TYPEID @VALUE @UPDATEDATE @STARTDATE @ENDDATE @OBJECT @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
