#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" CARPLACES/CARPLACE @ID @OBJECTID @OBJECTGUID @CHANGEID @NUMBER @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE \
    >"${XML%.*}.csv"
rm -f "$XML"
