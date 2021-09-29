#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | sed -E "s|(/REESTR_OBJECTS/OBJECT/)(@ISACTIVE=.+)|\1\2\n\1@REGION=$DIR|" \
    | 2csv -d "	" REESTR_OBJECTS/OBJECT @OBJECTID @CREATEDATE @CHANGEID @LEVELID @UPDATEDATE @OBJECTGUID @ISACTIVE @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
