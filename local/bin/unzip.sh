#!/bin/sh

set -eux
trap "exit 255" ERR
ZIP="$1"
unzip -ouLL "$ZIP" -d "${ZIP%.*}"
rm -f "$ZIP"
