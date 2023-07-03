#!/bin/bash

port=9000

pid=$(pgrep -f ":$port")

if [ -z "$pid" ]; then
  echo "포트 $port에서 실행 중인 프로세스가 없습니다."
else
  echo "포트 $port에서 실행 중인 프로세스 종료: $pid"
  kill "$pid"
fi

echo "run server"
nohup java -jar -Dserver.port=9000 /home/ubuntu/jenkins/workspace/toy-pipeline/build/libs/toy* &
