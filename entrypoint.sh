#!/bin/bash 
set -e 

# Railsサーバーの起動のため server.pid が残っている可能性があるので削除する 
rm -f /webapp/tmp/pids/server.pid 

# コンテナのメインプロセスを起動する 
exec "$@"