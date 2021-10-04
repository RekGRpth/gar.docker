#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" APARTMENTS/APARTMENT @ID @OBJECTID @OBJECTGUID @CHANGEID @NUMBER @APARTTYPE @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE \
    >"${XML%.*}.csv"
rm -f "$XML"
