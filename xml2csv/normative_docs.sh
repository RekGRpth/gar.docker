#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" NORMDOCS/NORMDOC @ID @NAME @DATE @NUMBER @TYPE @KIND @UPDATEDATE @ORGNAME @REGNUM @REGDATE @ACCDATE @COMMENT >"${XML%.*}.csv"
