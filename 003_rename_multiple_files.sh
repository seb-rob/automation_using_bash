#!/bin/bash

<<comments
Rename multiple files in a directory with a specific prefix.
comments

# check if arguemtns are present
if [[ $# -lt 3 ]];
then
	echo "Insufficient arguments for the scripts"
	echo "$0 <source_locations> <destination_location_to_be_renamed> <prefix>"
	exit 1
fi


# store arguments
source_location="$1"
destination_location="$2"
prefix="$3"


# check if given directory present of not
if [[ ! -d $source_location ]];
then
	echo "files location is not found"
	exit 1
fi


# rename multiple files with given prefix
for files in "$source_location"/*
do
	if [[ -e $files ]];
	then
		# extract file name
		file_basename=$(basename "$files")
		new_file="$destination_location/$prefix-$file_basename"
		mv "$files" "$new_file"
	else
		echo "No file to rename"
	fi
done



