#!/usr/bin/env bash

if [[ "$1" = '--logs' -a "$2" = '30' ]]; then
  for ((i = 1 ; i < 31 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
fi
