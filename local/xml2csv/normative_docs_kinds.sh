#!/bin/sh

set -eux
trap "exit 255" ERR
XML="$1"
xml2 \
    <"$XML" \
    | tr -d "\t" \
    | 2csv -d "	" NDOCKINDS/NDOCKIND @ID @NAME \
    >"${XML%.*}.csv"
rm -f "$XML"
