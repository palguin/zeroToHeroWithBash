echo exercise 1:
echo

echo renaming jpg files to include date
echo

sleep 1
if [ -f *.jpg ]
then
	for i in *.jpg
	do 
		mv *.jpg $(date +"%m-%d-%y")${i}
	done
else
	echo No jpg file exists
fi

echo 
echo exercise 2:
