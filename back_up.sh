#!/bin/bash

<< readme
this is a script for backing up last 5 days rotation

Usage:
./back_up.sh <path to your source> <path to backup folder>
readme

function display_usage {
	echo "Usage: ./back_up.sh <path to your source> <path to backup folder>"
}


# the "$#" is used for arguments 
if [ $# -eq 0 ]; then 
	display_usage
fi

# creating method for backing up

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup {
	zip -r "${backup_dir}/test_backups_${timestamp}.zip" "${source_dir}"
       	# the adding message is a warning and can be hid by adding this line at end in above string " > /dev/null" 

	# the "$?" is to see if output is generated or not
	if [ $? -eq 0 ]; then
		echo "backup generated successfully for ${timestamp}"
	fi
}

# rotation function 

function perform_rotation {
	# created array and the * means any type that has prefix test_backups with time sorted
	backups=($(ls -t "${backup_dir}/test_backups_"*.zip))

	# the [@] means list of timely sorted backups will be shown
	#echo "${backups[@]}"

	# and "#" used for lenght of arry
	if [ "${#backups[@]}" -gt 5 ]; then
		echo "Performing rotation for 5 days"

		backups_to_remove=("${backups[@]:5}")
		#echo "${backups_to_remove[@]}"

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
		done
	fi
}


create_backup
perform_rotation
