#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" NDOCTYPES/NDOCTYPE @ID @NAME @STARTDATE @ENDDATE >"${XML%.*}.csv"
