#!/bin/sh -ex

if [ "$(id -u)" = '0' ]; then
    if [ -n "$GROUP" ] && [ -n "$GROUP_ID" ] && [ "$GROUP_ID" != "$(id -g "$GROUP")" ]; then
        test -n "$USER" && usermod --home /tmp "$USER"
        groupmod --gid "$GROUP_ID" "$GROUP"
        chgrp "$GROUP_ID" "$HOME"
        test -n "$USER" && usermod --home "$HOME" "$USER"
    fi
    if [ -n "$USER" ] && [ -n "$USER_ID" ] && [ "$USER_ID" != "$(id -u "$USER")" ]; then
        usermod --home /tmp "$USER"
        usermod --uid "$USER_ID" "$USER"
        chown "$USER_ID" "$HOME"
        usermod --home "$HOME" "$USER"
    fi
fi
exec "$@"
