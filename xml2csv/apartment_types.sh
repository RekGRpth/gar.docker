#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" APARTMENTTYPES/APARTMENTTYPE @ID @NAME @SHORTNAME @DESC @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE >"${XML%.*}.csv"
