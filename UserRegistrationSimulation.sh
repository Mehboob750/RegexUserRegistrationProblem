#!/bin/bash -x
shopt -s extglob
function checkPattern(){
userInput=$1;
pattern=$2;
if [[ $userInput =~ $pattern ]]
then
	echo "Valid";
else
	echo "Not Valid";
fi
}
read -p "Enter a First Name: " firstName;
pattern='^[A-Z][a-z]{2,}$'
checkPattern $firstName $pattern;

