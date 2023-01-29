                                                                       
#!/bin/bash

if [ ! $# -eq 2 ]
then 
        echo "The number of arguments must be equal to two."
        exit 1
fi

writefile=$1
writestr=$2

if [ ! -e $writefile ]	
then
	mkdir -p $(dirname $writefile)	
	echo "$writestr" > $writefile

fi




