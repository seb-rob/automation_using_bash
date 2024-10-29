#!/bin/bash

<<comment
Automate file downloads from a specific URL.
comment

# check for arguemtn
if [[ $@ -eq 0 ]];
then
	echo "Url is missing."
	echo "$0 <url>"
	exit 1
fi

# store url
url="$1"

# donwload
wget "$url" -O download.zip
status="$?"

if [[ $status -gt 0 ]];
then
	echo "downlaod unsuccessful"
	echo "try again"
	exit 1
else
	echo "donwload successful!"
fi


