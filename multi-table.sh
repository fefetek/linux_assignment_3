#!/bin/bash

if [ ! -n "$1" ]; then
  echo "Invalid input"
  exit 84
fi

if [ ! -n "$2" ]; then
  echo "Invalid input"
  exit 84
fi

if [ "$1" -lt 0 ]; then
    echo "Input must be greater than 0"
    exit 84
fi
if [ "$2" -lt 0 ]; then
    echo "Input must be greater than 0"
    exit 84
fi

rows=$1
cols=$2

for i in $(seq 1 $rows); do
    for j in $(seq 1 $cols); do
        res=$(($i * $j))
        printf "$i*$j=$res\t"
    done
    echo ""
done
