#!/usr/bin/env bash

if [[ "$1" = '--help' -o "$1" = '-h' ]]; then
  echo "--date / -d : wyświetli dzisiejszą datę"
  echo "--logs / -l : utworzy 100 plików tekstowych"
  echo "--logs 30 / -l 30 : utworzy 30 plików tekstowych"
  echo "--help / -h : wyświetli dostępne opcje"
elif [[ "$1" = '--logs' -a "$2" = '30' || "$1" = '-l' -a "$2" = '30' ]]; then
  for ((i = 1 ; i < 31 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
elif [[ "$1" = '--logs' -o "$1" = '-l' ]]; then
  for ((i = 1 ; i < 101 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
elif [[ "$1" = '--init' ]]; then
  git clone https://github.com/majaszturmaj/laboratorium4
  currentDir=$(pwd)
  export PATH=$PATH:"$currentDir"
else [[ "$1" = '--date' -o "$1" = '-d' ]]; then
  date
fi
