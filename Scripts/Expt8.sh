#!/bin/bash

CHECK_MEM_VAL=10.0
CHECK_CPU_VAL=10.0


while true
do
	ps -e -o pmem=,pcpu=,pid=,user=,comm= --sort=-pmem |
	  while read SIZE CPU PID USER COMM
	  do
	    # echo $size
	    KILL_MEM=0
	    KILL_CPU=0
	    if [ "$USER" != "root" ]
	    then
	      if [ `echo "$SIZE>$CHECK_MEM_VAL" | bc` = "1" ]
	      then
	       	echo "kill $COMM due to mem usage"
	        # kill $pid # $size $user $comm
	      elif [ `echo "$CPU>$CHECK_CPU_VAL" | bc` = "1" ]
	      then
	        echo "kill $COMM due to cpu usage"
	        # kill $pid # $size $user $comm
	      fi
	    fi
	done
	sleep 10
done
