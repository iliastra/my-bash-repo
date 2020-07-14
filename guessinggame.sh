

clear
echo "Hello, "${USER}
date;
echo "Wellcome to the guessing game"
echo "Enter your number: "
read guestGuess

function get_file {
	local count=$(ls -l | wc -l)-1
	echo $count
}

rightNumber=$(get_file)

while [[ guestGuess -ne $rightNumber ]]
do
	if [[ guestGuess -gt $rightNumber ]]
	then
		echo "Pardon, your number was too high..."
	else 
		echo "Sorry, your number was too low..."
	fi
	echo
	echo "Please, try it again :)"
	read guestGuess
done

echo "Prima! You are right my guest!"
