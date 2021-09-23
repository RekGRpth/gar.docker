#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" REESTR_OBJECTS/OBJECT @OBJECTID @CREATEDATE @CHANGEID @LEVELID @UPDATEDATE @OBJECTGUID @ISACTIVE >"${XML%.*}.csv"
