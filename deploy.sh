#!/bin/bash

if lsof -i :80 | grep "LISTEN"
then
  kill "$(lsof -t -i :80)"
fi

java -jar build/libs/toy*
