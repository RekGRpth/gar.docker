#!/bin/sh

set -eux
trap "exit 255" ERR
URL="$1"
ZIP="$(dirname -- "$URL")"
ZIP="$(basename -- "$ZIP" | tr -d '.')"
echo "$ZIP" >deltaVersionId.txt
echo unzip >state.txt
