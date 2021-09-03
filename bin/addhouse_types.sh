#!/bin/sh -eux

XML="$1"
cat "${XML}" | xml2 | 2csv -q "" -d ";" HOUSETYPES/HOUSETYPE @ID @NAME @SHORTNAME @DESC @UPDATEDATE @STARTDATE @ENDDATE @ISACTIVE >"${XML%.*}.csv"
