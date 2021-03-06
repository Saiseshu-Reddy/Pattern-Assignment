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

#Mobile Number Validation User Case
read -p "Enter the mobile number along with country code:" mobile
mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
if [[ $mobile =~ $mobilePattern ]]
then
        echo "Valid Mobile Number"
else
        echo "Invalid mobile number"
fi

#Password Validation Rule 1 of having min 8 characters User Case
read -p "Enter the password:" password
passPattern1=".{8,}"
if [[ $password =~ $passPattern1 ]]
then
        echo "Valid Password"
else
        echo "Invalid Password"
fi

#Password validation Rule 2 of having at least 1 Uppser case user case
passPattern2="[A-Z]{1,}"
if [[ $password =~ $passPattern2 ]]
then
        echo "Valid Password"
else
        echo "Invalid Password, should have at least 1 uppser case"
fi

#Password Validation Rule 3 of having at least 1 number user case
passPattern3="[0-9]{1,}"
if [[ $password =~ $passPattern3 ]]
then
        echo "Valid Password"
else
        echo "Invalid Password, should have at least 1 number"
fi

#Password Validation Rule 4 of having only 1 special character
passPattern4="[!@#$%^&*)(.'/]{1}"
if [[ $password =~ $passPattern4 ]]
then
        echo "Valid Password"
else
        echo "Invalid Password, should have only one special character"
fi

#Email Samples Validation user case
read -p "Enter the sample email id:" sampleEmail
sampleEmailmailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9-]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,3}([.][a-zA-Z]{2})*$"
if [[ $sampleEmail =~ $sampleEmmailPattern ]]
then
        echo "Valid email ID"
else
        echo "Invalid email ID"
fi
