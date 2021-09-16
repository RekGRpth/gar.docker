#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" NDOCKINDS/NDOCKIND @ID @NAME >"${XML%.*}.csv"
