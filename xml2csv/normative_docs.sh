#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | sed -E "s|(/NORMDOCS/NORMDOC/)(@COMMENT=.+)|\1\2\n\1@REGION=$DIR|" \
    | 2csv -d "	" NORMDOCS/NORMDOC @ID @NAME @DATE @NUMBER @TYPE @KIND @UPDATEDATE @ORGNAME @REGNUM @REGDATE @ACCDATE @COMMENT @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
