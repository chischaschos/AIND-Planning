#!/usr/bin/env sh

{
  for p in {1..3}; do
    for a in {1..7}; do
      date "+Start: %H:%M:%S"
      python run_search.py -p $p -s $a
      date "+End: %H:%M:%S"
    done
  done
} > outputs/output-`date "+%Y%M%d%H%S"`.txt
