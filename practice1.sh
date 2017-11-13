#! /bin/bash

echo exercise1:
echo Shell Scripting is Fun!

echo

echo exercise2:
VAR="Shell Scripting is Fun!"
echo $VAR

echo

echo exercise3:
VAR=`hostname`
echo Display "This script is running on ${VAR}." where "${VAR}" is the output of the "hostname" command.

echo

echo exercise4:
if [ -e /etc/shadow ]
then
echo "Shadow passwords are enabled."
        if [ -w /etc/shadow ]
        then
        echo "You have permissions to edit /etc/shadow."

        else
        echo "You do NOT have permissions to edit /etc/shadow."
        fi
fi

echo

echo exercise5:

for i in "man" "bear" "pig" "dog" "cat" "sheep"
do
echo $i
done


echo

echo exercise6:
if [ $# -lt 1 ]; then
read -p "Enter file or directory name: " VAR


        if [ -f $VAR ]; then
        echo "Is file"
        ls -l $VAR

        elif [ -d $VAR ]; then
        echo "Is Dir"
        ls -l $VAR

        else
        echo "Is Other"
        fi
else
echo "Exercise 6 unapplicable. Please read prompt(cat practice1)"
fi

echo

echo exercise7:
if [ $# -gt 0   ] && [ $# -lt 2 ]
then
        if [ -f $1 ]
        then
        echo "Is file"
        ls -l $1

        elif [ -d $1 ]
        then
        echo "Is Dir"
        ls -l $1

        else
        echo "Is Other"
        fi
else
echo "Exercise 7 unapplicable. Please read prompt(cat practice1)"
fi




echo

echo exercise8:


if [ $# -gt 0  ]
then
        for i in $@
        do
                if [ -f $i ]
                then
                echo "Is file"
                ls -l $i

                elif [ -d $i ]
                then
                echo "Is Dir"
                ls -l $i

                else
                echo "Is Other"
                fi
        done
else
echo "Exercise 8 unapplicable. Please read prompt(cat practice1)"
fi