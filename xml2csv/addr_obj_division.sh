#!/bin/sh

set -eux
XML="$1"
xml2 <"$XML" | tr -d "\t" | 2csv -d "	" ITEMS/ITEM @ID @PARENTID @CHILDID @CHANGEID >"${XML%.*}.csv"
