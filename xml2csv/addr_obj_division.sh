#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
DIR="$(dirname -- "$XML")"
DIR="$(basename -- "$DIR")"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | sed -E "s|(/ITEMS/ITEM/)(@ID=.+)|\1\2\n\1@REGION=$DIR|" \
    | 2csv -d "	" ITEMS/ITEM @ID @PARENTID @CHILDID @CHANGEID @REGION \
    >"${XML%.*}.csv"
rm -f "$XML"
