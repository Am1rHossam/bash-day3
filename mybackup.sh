#!/bin/bash

#The location we need to backup
Location=/home/ubuntu/Desktop

#Listing all files in our directory
Directory=$(ls $Location)

#make a new directory to put your files in
mkdir $Location/mybackup

#make a permission to read and write and excute

#For loop to iterate on each file/Directory and copy it to our new directory
for i in $Directory
do
	cp -r '/home/ubuntu/Desktop/'$i $Location/mybackup
done

#Test Exit status

if [ $? -eq 0 ]; then
	echo backup accomplished
else
	echo backup failed
fi
