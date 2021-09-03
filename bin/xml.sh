#!/bin/sh -eux

find -type f -name "*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" saxon.sh /usr/local/xslt/xml.xslt
