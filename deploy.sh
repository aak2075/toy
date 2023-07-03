#!/bin/bash

if lsof -i :9000 | grep "LISTEN"
then
  echo "kill process"
  kill "$(lsof -t -i :9000)"
  sleep 5
fi

echo "run server"
nohup java -jar -Dserver.port=9000 build/libs/toy* > toy.out 2> toy.err < /dev/null &
