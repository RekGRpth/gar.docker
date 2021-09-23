#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" OPERATIONTYPES/OPERATIONTYPE @ID @NAME @SHORTNAME @DESC @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE >"${XML%.*}.csv"
