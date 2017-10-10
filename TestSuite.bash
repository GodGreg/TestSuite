#!/bin/bash
if [ "${#}" != "2" ]; then
        echo "Error - incorrect number of args" >> /dev/stderr
        exit 1
fi


for word in $(cat "${1}"); do

	if ! [ -r "${word}.out" ]; then
		echo "Error - ${word}.out is unreadable/doesn't exist" >> /dev/stderr
		exit 1
	fi

	A=$(cat "${word}.in") 
	X=$(cat "${word}.args") 
	Y=$(cat "${word}.out")
	"./${2}" ${X} < "${word}.in" > "${word}.actual"
	Z=$(cat "${word}.actual")

	if [ "$Z" != "$Y" ]; then
		echo "Test failed:" "${word}"
		echo "Args: ${X}"
		echo "Input: ${A}"
		echo "Expected: ${Y}"
		echo "Actual: ${Z}" 
	else 
		echo "Test Passed:" "${word}"
	fi
	echo "--------------------------------------------------------------"
done
