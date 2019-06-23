#!/bin/bash
if [ -z ${1+x} ]; 
	then 
		echo "Please pass file name as first argument. Refer to repo readme for furthur details"
		exit 
fi
if [ -z ${2+x} ]; 
	then 
		echo "Please pass the desired file size (kb/mb) as second argument. Refer to repo readme for furthur details"
		exit
fi
size_passed=$2
size_selected=${size_passed: -2}
size_conversion=0
if [ "$size_selected" == "kb" ]
then
	#echo "Coming in kb"
	size_conversion=1000
fi
if [ "$size_selected" == "mb" ]
then
	#echo "Coming in mb"
	size_conversion=1000000
fi
#echo $size_conversion
if [ $size_conversion == 0 ]
then
        echo "Sorry this script doesn't support creating a file of size $2"
	exit
fi
size_factor=$(echo $2 | tr -dc '0-9'i)
#echo $size_factor
if ! [[ $size_factor =~ ^[0-9]+$ ]] 
then
   echo "Invalid value passed for second parameter"
   exit
fi
echo "------ Folder -----"
pwd
echo "----- Filesize -----"
echo $size_factor$size_selected
size_in_bytes=$((size_conversion*size_factor))
#echo $size_in_bytes
path=$(pwd)
#echo $path
echo "Generating....."
head -c $size_in_bytes /dev/urandom > $path"/"$1 
echo "----- File $1 has been generated -----"
exit


