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

function acceptFirstName(){
	read -p "Enter a First Name: " firstName;
	pattern='^[A-Z][a-z]{2,}$'
	checkPattern $firstName $pattern;
}

function acceptLastName(){
	read -p "Enter a Last Name: " lastName;
	pattern='^[A-Z][a-z]{2,}$'
	checkPattern $lastName $pattern;
}

function acceptEmailId(){
	read -p "Enter a Email id: " emailId;
	pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3})?$"
	checkPattern $emailId $pattern;
}

function acceptMobileNumber(){
	read -p "Enter Mobile Number: " mobileNumber;
	mobilePattern="^([0-9]{2}[ ])?([1-9]{1}[0-9]{9})$"
	if [[ $mobileNumber =~ $mobilePattern ]]
	then
        echo "Valid";
	else
        echo "Not Valid";
	fi
}

function acceptPassword(){
	read -p "Enter the Password:" password;
	rule1=[a-z]+
	rule2=[A-Z]+
	rule3=[0-9]+
	rule4=[\@\$\#\!\?\&\%]{1}
	if [[ $password =~ $rule4 && $password =~ $rule1 && $password =~ $rule2 && $password =~ $rule3 && ${#password} -gt "7" ]]
	then
      if [[ $password =~ $rule4 && ${#rule4} =~ 1 ]]
		then
			echo "Valid";
		else
        	echo "Not Valid";
		fi
	else
		echo "Not Valid";
	fi
}

acceptFirstName;
acceptLastName;
acceptEmailId;
acceptMobileNumber;
acceptPassword;
