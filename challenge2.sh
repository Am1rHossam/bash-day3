#!/bin/bash

touch employee.txt
read -p "Enter your first name: " FIRST

while [[ $FIRST != +([a-zA-Z]) ]]
do
	for (( counter=1 ; counter<3 ; counter++ ))
		do
			echo "Its the chance number $counter and you have 3"
			read -p "Enter a character only, please :) " FIRST
		done
done

read -p "Enter your last name: " LAST

while [[ $LAST != +([a-zA-Z]) ]]
do
	for (( counter=1 ; counter<3 ; counter++ ))
		do
			echo "Its the chance number $counter and you have 3"
			read -p "Enter a character only, please :) " LAST
		done
done

read -p "Enter your phone number: " NUMBER

while [[ $NUMBER != +([0-9]) ]]
do
	for (( counter1 ; counter<3 ; counter++ ))
		do
			echo "Its the chance number $counter and you have 3"
			read -p "Enter a numbers only, please :) " NUMBER
		done
done

CHECK=`awk -F : -v NUMBER=$NUMBER 'NUMBER == $3 { print $3 }' employee.txt`

while [[ $CHECK != "" ]]
do
	for (( counter=1 ; counter<3 ; counter++ ))
		do
			echo "Its the chance number $counter and you have 3"
			read -p "The number has entered before enter another please :) : " NUMBER
			CHECK=`awk -F : -v NUMBER=$NUMBER 'NUMBER == $3 { print $3 }' employee.txt`
		done
done

read -p "Enter your department " DEPARTMENT

while [[ $DEPARTMENT != +([a-zA-Z]) ]]
do
	for (( counter=1 ; counter<3 ; counter ++ ))
		do
			echo "Its the chance number $chance and you have 3"
			read -p "Enter a character only please :) " DEPARTMENT
		done
done

read -p "Enter your salary please : " SALARY

while [[ $SALARY != +([0-9]) ]]
do
	for (( counter=1 ; counter<3 ; counter++ ))
		do
			echo "Its the chance number $counter and you have 3"
			read -p "Enter numbers only please :) " SALARY
		done
done

#TEST CONDITION

echo -e "$FIRST:$LAST:$NUMBER:$DEPARTMENT:$SALARY" >> employee.txt

if [ $# -ne 0 ]; then
	echo "There is a problem"
else
	echo "DATA ENTRY DONE"
fi
