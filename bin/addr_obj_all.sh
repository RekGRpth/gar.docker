#!/bin/sh -eux

find -type f -name "AS_ADDR_OBJ_2*.XML" | sort -u | xargs -r -n 1 -P "$(nproc)" addr_obj.sh
