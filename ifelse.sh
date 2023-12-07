# write a if else statement

echo "Enter a number between 1 and 3"

read NUM

if [ $NUM -eq 1 ]
then
    echo "You entered one"
elif [ $NUM -eq 2 ]
then
    echo "You entered two"
elif [ $NUM -eq 3 ]
then
    echo "You entered three"
else
    echo "You did not enter a number between 1 and 3"
fi