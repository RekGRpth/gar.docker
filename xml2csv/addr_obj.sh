#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" ADDRESSOBJECTS/OBJECT @ID @OBJECTID @OBJECTGUID @CHANGEID @NAME @TYPENAME @LEVEL @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE \
    >"${XML%.*}.csv"
rm -f "$XML"
