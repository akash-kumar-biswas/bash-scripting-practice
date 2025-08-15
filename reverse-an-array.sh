#!/bin/bash

reverseArray(){
    n=${#arr[@]}

    for((i=0, j=n-1; i<j; i++, j--))
    do
        local temp=${arr[$i]}
        arr[$i]=${arr[$j]}
        arr[$j]=$temp
    done
    echo
}

arr=()

read -p "Enter size: " n

read -p "Enter elements seperated by space: " -a arr

reverseArray "${arr[@]}"
echo "${arr[@]}"