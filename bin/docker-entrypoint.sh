#!/bin/bash -e

rm -rf ./tmp/pids/server.pid
./bin/rails db:prepare
./bin/rails s -b 0.0.0.0 -p 3000
