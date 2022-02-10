#!/bin/bash

read -p "Enter your ID: " ID

while [[ $ID != +([0-9]) ]]
do
	echo "Enter a valid ID"
	read ID
done

check_value=`awk -F : -v id=$ID 'id == $1 { print $1 }' db.txt`

while [ -z $check_value ]
do
	echo "Please Enter a valid ID"
	read ID
	check_value=`awk -F : -v id=$ID 'id == $1 { print $1 }' db.txt`
done

name=`awk -F : -v id=$ID 'id == $1 {print $2}' db.txt`

Old_Password=`awk -F : -v id=$ID 'id == $1 {print $3}' db.txt`

echo "Welcome, $name , Enter your old password"
read OldPass

while [[ $Old_Password != $OldPass ]]
do
	for ((i=0;i<2;i++))
	do
		echo Wrong Password , Try again
        	read OldPass
	done
echo you have entered the password 3 times already BYE BYE
exit 1
done

read -sp "Enter your password: " newpass

sed "s/:$Old_Password/:$newpass/g" db.txt 
