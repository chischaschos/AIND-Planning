#!/usr/bin/env sh

{
for i in {1..10}; do
  date "+Start: %H:%M:%S"
  python run_search.py -p 1 -s $i
  date "+End: %H:%M:%S"
  echo $i
done
} > outputs/output-`date "+%Y%M%d%H%S"`.txt
