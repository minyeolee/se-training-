#!/bin/bash

crt="CRITICAL"
STRINGS=("OK" "WARNING" "CRITICAL" "UNKNOWN")

while :

do
	#random=`sort log_file.txt | head -1`
	#sleep 15
	
	CTR=$(( 0 + RANDOM % 4))

	   	if [ ! ${STRINGS[$CTR]} = "CRITICAL" ]
	      	   then
	      		echo ${STRINGS[$CTR]}
	      		sleep 15
	   
	   else

		while :
		do 
	 		echo $crt
	 		sleep 15 
		done
	   fi
   done
done
