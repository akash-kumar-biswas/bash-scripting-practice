#!/bin/bash

freq=()

for (( i=0; i<100001; i++))
do
    freq[$i]=0;
done

arr=()

read -p "Enter array elements: " -a arr

n=${#arr[@]}

for (( i=0; i<n; i++ ))
do  
    freq[${arr[$i]}]=$(( freq[${arr[$i]}] + 1))
done

for (( i=0; i<100001; i++))
do
    if [ "${freq[$i]}" -gt 0 ]
    then
        echo "$i count = ${freq[$i]}"
    fi
done
