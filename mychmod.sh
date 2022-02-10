#!/bin/bash

cd /home | chmod +x *

#another way using loop

FILE=$(ls -p /home)

for i in ${FILE}
do
	echo $FILE
	chmod +x '/home/'$FILE
done
