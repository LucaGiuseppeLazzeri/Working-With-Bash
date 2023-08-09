if [ "$1" = "apple" ]
 then
   echo "I like apples."
   exit  # end the program
elif [ "$1" = "orange" ]
   then
    echo "I like oranges."
    exit
else
    echo "No apples or oranges?"
fi 
# this only runs if we do not recognise the fruit
echo "I am hungry!"

