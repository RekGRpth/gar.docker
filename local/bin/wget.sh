#!/bin/sh

set -eux
trap "exit 255" ERR
URL="$1"
SIZE="$(curl -Is "$URL" | sed "s/\(.*\)/\L\1/" | grep 'content-length' | grep -oP '\d+')"
test "$SIZE" -lt 1073741824
ZIP="$(dirname -- "$URL")"
ZIP="$(basename -- "$ZIP" | tr -d '.')"
wget --continue --output-document="$ZIP.zip" "$URL"
