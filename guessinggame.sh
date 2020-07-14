#!/usr/bin/env bash
# File: guessinggame.sh


clear
echo "Hello, "${USER}
echo "Wellcome to the guessing game"
echo "--The date is " 
date;
echo "----Please, enter your number:----"
read guestGuess

function get_number {
	local count=$(ls -l | wc -l)-1
	echo $count
}

rightNumber=$(get_number)

while [[ guestGuess -ne $rightNumber ]]
do
	if [[ guestGuess -gt $rightNumber ]]
	then
		echo "Pardon, your number was too high..."
	else 
		echo "Pardon, your number was too low..."
	fi
	echo
	echo "Please, try it again :)"
	read guestGuess
done

echo "Prima! That is the right number!"
