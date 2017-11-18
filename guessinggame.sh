RANDOM=$$
[[ -d temp ]] || mkdir temp
cd temp  #provide the path for directory
eval touch {1..$RANDOM}
numOfFiles=$(ls | wc -w)
n=0

function compare {
    if [[ $1 -lt $numOfFiles ]]
		then
			echo "too low"
	elif [[ $1 -gt $numOfFiles ]]
		then
			echo "too high"
	else
			let n=1
	fi		
}
while [[ "$n" -eq "0" ]]
do
	read numGuess
	compare $numGuess
done
echo "Congrats for guessing the number correct"
echo "Press any key to exit..."
cd ..

[[ -d temp ]] && rm -r temp
read response
