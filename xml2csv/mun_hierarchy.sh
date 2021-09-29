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
    | sed -E "s|(/ITEMS/ITEM/)(@ISACTIVE=.+)|\1\2\n\1@OBJECT=$TABLE\n\1@REGION=$DIR|" \
    | 2csv -d "	" ITEMS/ITEM @ID @OBJECTID @PARENTOBJID @CHANGEID @OKTMO @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE @OBJECT @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
