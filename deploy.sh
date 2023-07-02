#!/bin/bash

## 80포트 실행중이면 죽임
if lsof -i :9000 | grep "LISTEN"
then
  kill "$(lsof -t -i :9000)"
fi

nohup java -jar -Dserver.port=9000 build/libs/toy* &

