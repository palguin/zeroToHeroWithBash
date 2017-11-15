#!/bin/bash

echo exercise 1:
echo

sleep 1
if [ $# -gt 0  ]; then
	echo renaming jpg files to include date
	echo
	if [ -f *.jpg ]; then
		for i in *.jpg
		do 
			mv *.jpg $(date +"%m-%d-%y")${i}
		done
	else
		echo No jpg file exists
	fi
else
	echo continuing to part 2
fi

echo 
echo exercise 2:
echo

#Needs testing
read -p "Enter a file extension: " EXTENSION
read -p "Enter a file prefix: " PREFIX

if [[ $PREFIX == "" ]]; then
        PREFIX=$(date +"%y-%m-%d")
fi


for f in $(ls *.$EXTENSION 2>/dev/null) ; do
	if [ -f $f ]; then 
		echo "$f -> ${PREFIX}${f}"
		mv $f ${PREFIX}${f}
	fi
done
