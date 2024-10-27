#!/bin/bash

<<comment
List all files in a directory and save the output to a text file.
comment


# check if source director is given
if [[ $# -ne 1 ]];
then
	echo "Script requires arguments"
	echo "$0 <directory_to_list>"
	exit 1
fi

source_directory="$1"

# directory existence
if [[ ! -d $source_directory ]];
then
	echo "given direcory does not exist"
	exit 1
fi


# list all files
cd "$source_directory"
ls >> available_files.txt
