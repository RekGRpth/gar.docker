#!/bin/sh -eux

find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r xsd; do
    xml="$(basename -- "${xsd%.*}")"
    find -type f -name "as_${xml}_2*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv_one.sh "${xsd}"
done
