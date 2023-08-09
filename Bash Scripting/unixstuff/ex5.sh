#!/bin/bash -v

if [ "$1" = "" ]
then	
	echo Please enter a directory name
	read directory 
	echo $directory

else
		directory=$1
fi

if [ -r $directory  ]
then
	echo directory alredy exists

else
	echo Creating directory $directory
	mkdir $directory

fi

directory=""