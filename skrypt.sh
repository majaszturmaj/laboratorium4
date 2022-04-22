#!/usr/bin/env bash

if [[ ( "$1" == '--help' ) || ( "$1" == '-h' ) ]]; then
  echo "--date / -d : wyświetli dzisiejszą datę"
  echo "--logs / -l : utworzy 100 plików tekstowych"
  echo "--logs 30 / -l 30 : utworzy 30 plików tekstowych"
  echo "--help / -h : wyświetli dostępne opcje"
elif [[ ( "$1" == '--logs' && "$2" -eq '30' ) || ( "$1" -eq '-l' && "$2" -eq '30' ) ]]; then
  for ((i = 1 ; i < 31 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
elif [[ ( "$1" == '--logs' ) || ( "$1" == '-l' ) ]]; then
  for ((i = 1 ; i < 101 ; i++)); do
	 var=$(date)
	 echo "log$i data.sh $var" >> log$i.txt
  done
elif [[ "$1" == '--init' ]]; then
  git clone https://github.com/majaszturmaj/laboratorium4
  currentDir=$(pwd)
  export PATH=$PATH:"$currentDir"
elif [[ ( "$1" -eq '--error' && $2 = '30' ) || ( "$1" -eq '-e' && $2 -eq '30' ) ]]; then
  for ((i = 1 ; i < 31 ; i++)); do
	 touch error$i/error$i.txt
  done
elif [ "$1" == '--date' ] || [ "$1" == '-d' ]; then
  date
fi
