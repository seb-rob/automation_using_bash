#!/bin/bash

<<comment
Create a script to clean up temporary files from the system.
comment


echo "Cleaning temporary files...."

# Temp dir lists
temp_dir=( "$TMPDIR" "/tmp" "$HOME/.cache" )

# loop through temp dirs and clear
for dir in "${temp_dir[@]}"
do
	echo "Deleting files from $dir"
	rm -rf "$dir"/*
done

echo "Cleanup completed..."

