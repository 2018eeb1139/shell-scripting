# write a for loop that prints out the numbers 1 to 100

for i in {1..100}
do
    echo $i
done

# write a for loop that prints out the numbers 1 to 100
# but only prints out even numbers

for i in {1..100}
do
    if [ $((i%2)) -eq 0 ]
    then
        echo $i
    fi
done