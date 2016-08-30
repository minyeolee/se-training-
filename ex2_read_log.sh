#!/bin/bash

read_log=`tail -n 1 log_file.txt`

case $read_log in

	"OK")
		exit 0 ;;
	"WARNING")
		exit 1 ;;
	"CRITICAL")
		exit 2 ;;
	"UNKNOWN")
		exit 3 ;;

esac
