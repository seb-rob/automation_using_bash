#!/bin/bash

<<comment
Backup a directory by copying files to a backup location.
comment


# check if paths are given
if [[ $# -lt 2 ]];
then
	echo "Insufficient arguments provided"
	echo "$0 <directory_to_take_backup>  <backup_location>"
	exit 1
fi

# get files
directory_to_backup=$1
backup_location=$2

# check if backup loacation exist
if [[ ! -d $backup_location ]];
then
	echo "$backup_location not found."
	echo "Creating $backup_location.."
	mkdir -p $backup_location
fi


# take backup of each file and direcoty
cp -r "$directory_to_backup"/* "$backup_location/"
echo "Backup successful!"
