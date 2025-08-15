#!/bin/bash

countTarget(){
    local arr=("${!1}")
    local target=$2
    local n=${#arr[@]}
    local cnt=0;
    for((i=0 ; i<n; i++))
    do
        if [ ${arr[$i]} -eq "$target" ]
        then
            cnt=$((cnt+1))
        fi
    done
    echo "$cnt"
}

arr=()

read -p "Enter size: " n

read -p "Enter elements seperated by space: " -a arr

read -p "Enter target element: " target

cnt=$(countTarget arr[@] "$target")
echo "$cnt"