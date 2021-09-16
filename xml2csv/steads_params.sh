#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" PARAMS/PARAM @ID @OBJECTID @CHANGEID @CHANGEIDEND @TYPEID @VALUE @UPDATEDATE @STARTDATE @ENDDATE >"${XML%.*}.csv"
