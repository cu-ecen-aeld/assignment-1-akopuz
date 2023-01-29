                                                                       
#!/bin/bash

if [ ! $# -eq 2 ]
then 
        echo "The number of arguments must be equal to two."
        exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
        echo "The file $1  does not exist."
        exit 1
fi

cd $filesdir

num_of_files=`ls | wc -l`
num_of_lines=`grep $searchstr * -r | wc -l`

echo "The number of files are $num_of_files and the number of matching lines are $num_of_lines"





