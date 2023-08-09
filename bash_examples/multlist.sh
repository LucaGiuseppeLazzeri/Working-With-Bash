#!/bin/bash -v
# Create a name of a temp file using the "random" variable.
# Use it three times to create a longer filename.
temp=$RANDOM_$RANDOM_$RANDOM.tmp
# use a loop to append each file onto the end of the tmp file
# remember the $* symbol means all parameters (needed to make it
# work with wildcards on the command line.
for loop in $*
do 
  echo "=====" >> $temp # put a header and filname in temp file
  echo "=====" $loop >> $temp
  echo "=====" >> $temp
  cat $loop  >> $temp # add file to end of temp file
done
# output the result (if found, could be empty if no files found)
# then clean up by deleting the temp file
if [ -r $temp ]
then	
     more $temp
     rm $temp
fi
