#!/bin/bash
set -e

rm /myapp/tmp/pids/server.pid
rails db:migrate
# rails db:seed

exec "$@"
