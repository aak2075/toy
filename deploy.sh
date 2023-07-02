#!/bin/bash

## 80포트 실행중이면 죽임
if lsof -i :80 | grep "LISTEN"
then
  kill "$(lsof -t -i :80)"
fi

nohup java -jar build/libs/toy* &

