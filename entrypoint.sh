#!/bin/bash
set -e

if [ -e /myapp/tmp/pids/server.pid ]; then
  rm /myapp/tmp/pids/server.pid
fi

rails db:migrate
# rails db:seed

exec "$@"
