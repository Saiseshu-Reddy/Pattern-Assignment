#!/bin/bash -x

echo "Welcome to email User Registration"

#First Name Validation User Case
read -p "Enter the first name which starts with cap and has a minimum of 3 characters:" firstName
firstNamePattern="^[A-Z]{1}[a-zA-Z0-9]{2}([a-zA-Z0-9])*$"
if [[ $firstName =~ $firstNamePattern ]]
then
        echo "Valid first name"
else
        echo "Invalid first name"
fi

#Last Name Validation User Case
read -p "Enter the last name which starts with cap and has a minimum of 3 characters:" lastName
lastNamePattern="^[A-Z]{1}[a-zA-Z0-9]{2}([a-zA-Z0-9])*$"
if [[ $lastName =~  $lastNamePattern ]]
then
        echo "Valid last name"
else
        echo "Invalid last name"
fi

#email Id Validation User Case
read -p "Enter the email id:" email
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9-]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,3}([.][a-zA-Z]{2})*$"
if [[ $email =~ $emailPattern ]]
then
        echo "Valid email ID"
else
        echo "Invalid email ID"
fi

