#!/bin/sh -eux

ls | while read -r old; do new=$(echo $old | sed 's/\(.*\)/\L\1/'); mv $old $new; done
find -type f -name "*.xsd" | sort -u | while read -r xsd; do
    filename="$(basename -- "${xsd}")"
    filename="${filename%.*}"
    table="$(echo "${filename}" | sed -E "s|_[[:digit:]]+||gi")"
    find -type f -name "${table}_2*.XML" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv_one.sh "${xsd}"
done
