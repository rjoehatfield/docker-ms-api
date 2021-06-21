#!/bin/bash
set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

exec rails s -b 0.0.0.0
#exec rdebug-ide --debug --host 0.0.0.0 --port 1234 -- bin/rails server -p 3000 -b 0.0.0.0
