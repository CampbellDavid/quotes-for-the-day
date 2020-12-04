#!/bin/bash
NUMBER=$(($RANDOM % 5))

for ((run=1; run <= NUMBER + 1; run++))
do
  echo `fortune` > ~/pusher/file.txt
  git -C ~/pusher/ add . -A
  git -C ~/pusher/ commit -m "`fortune -sn 32`"
done

