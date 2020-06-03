#!/usr/env bash
echo "Welcome to the guessing game!!"
function  guess {
echo "Please try to guess the no of files in the directory :)"
read n
no_of_files=$(ls -l | wc -l)
}
guess
while [[ $n -ne $no_of_files ]]
do
if [[ $n -gt $no_of_files ]]
then
echo "Your guess is too high! Guess again!!"
elif [[ $n -lt $no_of_files ]]
then
echo "Your guess is too low! Guess again!!"
fi
guess
done
if [[ $n  -eq $no_of_files ]]
then
echo "Congratulations! You've got the correct guess! Have a nice day! :)"
fi
