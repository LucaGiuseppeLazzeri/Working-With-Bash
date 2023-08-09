# A “for” loop implemented 
# as a while.   
loop=5
while [ "$loop" -ne 0 x 
do
 echo $loop
 loop=`expr $loop - 1`
done
# Same loop as an until 
loop=5
until [ "$loop" -eq 0 ]
do
 echo $loop
 loop=`expr $loop - 1`
done

