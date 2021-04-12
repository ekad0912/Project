#!/usr/bin/env bash
# File: guessinggame.sh

function question  {
	echo "How many files in this directory?"
	read response
}
function hmfiles {
	echo `find ./ -maxdepth 1  -type f | wc -l`
}

while [[ $response -ne $(hmfiles) ]]
do
	question
	if [[ $response -eq $(hmfiles) ]]
	then
		echo "Congratulations! This is correct number of files"
	else
		if [[ $response -gt $(hmfiles) ]]
		then
			echo "Is it too high"
		else
			echo "Is it too low"
		fi
	fi
done
