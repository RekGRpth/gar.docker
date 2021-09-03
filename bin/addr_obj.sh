#!/bin/sh -eux

XML="$1"
cat "${XML}" | xml2 | 2csv -q "" -d ";" ADDRESSOBJECTS/OBJECT @ID @OBJECTID @OBJECTGUID @CHANGEID @NAME @TYPENAME @LEVEL @OPERTYPEID @PREVID @NEXTID @UPDATEDATE @STARTDATE @ENDDATE @ISACTUAL @ISACTIVE >"${XML%.*}.csv"