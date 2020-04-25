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

read -p "Enter a Last Name: " lastName;
pattern='^[A-Z][a-z]{2,}$'
checkPattern $lastName $pattern;

read -p "Enter a Email id: " emailId;
pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3})?$"
checkPattern $emailId $pattern;
