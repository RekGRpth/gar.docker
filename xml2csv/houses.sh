#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" HOUSES/HOUSE @ID @OBJECTID @OBJECTGUID @CHANGEID @HOUSENUM @ADDNUM1 @ADDNUM2 @HOUSETYPE @ADDTYPE1 @ADDTYPE2 @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE \
    >"${XML%.*}.csv"
rm -f "$XML"
