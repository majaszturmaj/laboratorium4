#!/usr/bin/env bash

if [[ "$1" = '--logs' ]]; then
  for ((i = 1 ; i < 101 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
fi
