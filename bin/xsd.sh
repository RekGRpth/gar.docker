#!/bin/sh -eux

find -type f -name "*.xsd" | sort -u | xargs -r -n 1 -P "$(nproc)" saxon.sh xsd.xslt
