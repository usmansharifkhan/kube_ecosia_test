#!/usr/bin/env sh

COMMAND="gunicorn"

if [[  -z $SERVER_HOSTNAME ]]; then
  SERVER_HOSTNAME="0.0.0.0"
fi

if [[ -z $LISTEN_PORT ]]; then
  LISTEN_PORT="1234"
fi

COMMAND="$COMMAND -b $SERVER_HOSTNAME:$LISTEN_PORT"

if [[ -z $GUNICORN_WORKERS ]]; then
  GUNICORN_WORKERS="2"
fi

COMMAND="$COMMAND -w $GUNICORN_WORKERS"

echo "Using gunicorn server with $GUNICORN_WORKERS workers"
exec $COMMAND rest_server:api