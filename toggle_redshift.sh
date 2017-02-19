#!/bin/bash

PIDFILE="/tmp/i3_redshift.pid"
LONGLAT="48.866667:2.333333"    # Paris long/lat

exec &>/dev/null 

if [ ! -f "$PIDFILE" ]; then
    redshift -l "$LONGLAT" &
    echo $! > $PIDFILE
else
    kill "$(cat "$PIDFILE" | xargs)"
    redshift -x
    rm "$PIDFILE"
fi
