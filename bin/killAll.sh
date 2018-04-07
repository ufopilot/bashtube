#!/bin/bash 
TPID=$1
if ps -ef|grep -q mplayer; then  
  ps -ef|grep mplayer |while read user pid ppid rest 
   	   do
	     kill $pid >/dev/null 2>&1; wait $pid >/dev/null 2>&1; 
	     [ "$ppid" != "$TPID" ] && kill $ppid >/dev/null 2>&1; wait $ppid >/dev/null 2>&1 
     	   done
fi
