#!/bin/bash

number=2

while [ "$number" -le 12 ]; 
do
	#statements
	echo""
	echo"The mulitplaction times tables for $number is "
	loop2=1

	while [ "$loop2" -le 12 ]
	do
		result=$(($loop2 * $number))
		echo "$loop2 x $number = $result"
		loop2=$(($loop2+1))
	done

	number=$(($number+1))


done
