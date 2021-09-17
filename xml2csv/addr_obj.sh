#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" ADDRESSOBJECTS/OBJECT @ID @OBJECTID @OBJECTGUID @CHANGEID @NAME @TYPENAME @LEVEL @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE >"${XML%.*}.csv"