#!/bin/sh

exec 2>&1
set -ex
if [ -n "$GROUP" ] && [ -n "$GROUP_ID" ]; then
    find "$HOME" ! -group "$GROUP" -exec chgrp "$GROUP_ID" {} \;
fi
if [ -n "$USER" ] && [ -n "$USER_ID" ]; then
    find "$HOME" ! -user "$USER" -exec chown "$USER_ID" {} \;
fi
