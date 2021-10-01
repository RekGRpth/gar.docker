#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | sed -E "s|(/CARPLACES/CARPLACE/)(@ID=.+)|\1\2\n\1@REGION=$DIR|" \
    | 2csv -d "	" CARPLACES/CARPLACE @ID @OBJECTID @OBJECTGUID @CHANGEID @NUMBER @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
