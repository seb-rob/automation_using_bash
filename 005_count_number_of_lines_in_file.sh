#!/bin/bash

# chck source file is given or not
if [[ $# -ne 1 ]];
then
	echo "Script requires file path to count number of lines"
	echo "$0 <file_path>"
	exit 1
fi

# store arguments
source_file="$1"

# check if file exist
if [[ ! -e $source_file ]];
then
	echo "$source_file does not exist"
	exit 1
fi


# count number of line
line_count=$(wc -l < "$source_file")
echo "line count is: $line_count"


