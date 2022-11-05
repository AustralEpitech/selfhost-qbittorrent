#!/bin/bash

if [ -n "$PGID" ]; then
    groupmod -g "$PGID" app
fi

if [ -n "$PUID" ]; then
    usermod -u "$PUID" app
fi

chown -R app:app /app/ /data/torrents/

exec su app -c "$*"
