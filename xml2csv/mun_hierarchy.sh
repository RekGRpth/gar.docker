#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" ITEMS/ITEM @ID @OBJECTID @PARENTOBJID @CHANGEID @OKTMO @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE \
    >"${XML%.*}.csv"
rm -f "$XML"
