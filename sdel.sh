#!/bin/bash

echo "Which file will you want to send to the trash?"
read file

if [ -f "$file" ]
then
	if [ -e ~/Documents/Trash/$file ]
	then
		echo "This file already exists in Trash"
		mv $file "1"$file
		mv "1"$file ~/Documents/Trash
	else
		echo "This file does not exist in Trash"
		mv $file ~/Documents/Trash
	fi
fi
