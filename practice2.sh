echo exercise1:

echo

echo "This script will exit with a 0 exit status."; #  exit 0

echo

echo exercise2:

if [ $# -gt 0  ] &&  [ $# -lt 2 ]
then

	if [ -f $1 ]; then
	echo is file 
	exit 0
	elif [ -d $1 ];then
	echo is dir
	exit 1
	else
	echo is other
	exit 2
	fi
else
echo non-applicable

fi

echo

echo exercise3:

echo


cat /etc/shadow
 
if [ $? -eq 0 ]; then 
echo success
else
echo failure
fi