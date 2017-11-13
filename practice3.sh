echo exercise 1:

echo

echo number of files in this diretory: $(ls | wc -l)

echo

echo exercise 2:

echo

if [ $# -gt 0  ] &&  [ $# -lt 2 ]; then
	if [ -d $1 ]; then
		echo number of files in the directory $1 : $(ls $1 | wc -l)
	else
		echo Argument not a directory
	fi
else
	echo no argument given. Not applicable
fi
