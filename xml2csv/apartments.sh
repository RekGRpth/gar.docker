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
    | sed -E "s|(/APARTMENTS/APARTMENT/)(@ISACTIVE=.+)|\1\2\n\1@OBJECT=$TABLE\n\1@REGION=$DIR|" \
    | 2csv -d "	" APARTMENTS/APARTMENT @ID @OBJECTID @OBJECTGUID @CHANGEID @NUMBER @APARTTYPE @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE @OBJECT @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
