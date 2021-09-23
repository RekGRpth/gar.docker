#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" PARAMTYPES/PARAMTYPE @ID @NAME @CODE @DESC @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE >"${XML%.*}.csv"
