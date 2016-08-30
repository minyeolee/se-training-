#!/bin/bash

echo -n "Enter a URL: "
read url

check_url=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' $url`

case $check_url in

	[200]*)
		exit 0 ;;
	[300]*)
		exit 1 ;;
	[500]*)
		exit 2 ;;
	*)
		exit 3 ;;

esac




