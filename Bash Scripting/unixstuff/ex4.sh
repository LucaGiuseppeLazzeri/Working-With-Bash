#!/bin/bash


for number in {2..12}
do
	echo ""
	echo "The multiplication for $number is: "
	for i in {1..12}
	do
		result=$(($i * $number))
		echo "$i x $number = $result"
	done
done

number = ""
result = ""
i = ""