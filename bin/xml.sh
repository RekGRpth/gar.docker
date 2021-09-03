#!/bin/sh -eux

find -type f -name "*.XML" | sort -u | xargs -r -n 1 -P "$(nproc)" saxon.sh xml.xslt
