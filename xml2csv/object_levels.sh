#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" OBJECTLEVELS/OBJECTLEVEL @LEVEL @NAME @SHORTNAME @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE >"${XML%.*}.csv"
rm -f "$XML"
