#!/bin/bash

printArray(){
    local arr=("$@")
    local n=${#arr[@]}

    for((i=0; i<n; i++))
    do
        echo -n "${arr[$i]} "
    done
    echo
}

arr=()

read -p "Enter size: " n

read -p "Enter elements seperated by space: " -a arr

printArray "${arr[@]}"