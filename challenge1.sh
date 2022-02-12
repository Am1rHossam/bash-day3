#!/bin/bash
DATE=`date +"%d-%m-%Y"`
name=("Amir $DATE")
mkdir "Amir "$DATE""
for (( counter=1 ; counter<=25 ; counter ++ ))
do
	touch ./Amir" $DATE"/File"$counter".txt
done

if [ $# -eq 0 ]; then
	echo "there is 25 files printed"
else
	echo "There is a problem"
fi
