#!/bin/sh -eux

find -type f -name "AS_ADDHOUSE_TYPES_2*.XML" | sort -u | xargs -r -n 1 -P "$(nproc)" addhouse_types.sh
