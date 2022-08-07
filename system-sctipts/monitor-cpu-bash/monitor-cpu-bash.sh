#!/bin/bash

while [ true ] ;do
curUsed=`free -m |awk 'NR==3 {print $4}'`

if [ $curUsed -lt 1000 ] && [ $curUsed -gt 800 ]; 

then
echo "Alert below 800" | /bin/mail -s "Memory treshold limit reached!!" patmagpantay22@icloud.com

fi
done
