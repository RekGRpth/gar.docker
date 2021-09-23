#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" NDOCTYPES/NDOCTYPE @ID @NAME @STARTDATE @ENDDATE >"${XML%.*}.csv"
