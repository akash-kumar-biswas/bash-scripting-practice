#!/bin/bash

read -p "Enter Number: " num

cnt=0
while (( num != 0 ))
do
    rem=$((num%10))

    if (( rem == 2 || || rem == 3 || rem == 5 || rem == 7 ))
    then
        ((cnt++))
    fi

    num=$((num/10))

done

echo "No of Prime digit: $cnt"