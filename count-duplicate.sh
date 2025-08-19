#!/bin/bash

arr=()

read -p "Enter elements:" -a arr

cnt=0

n=${#arr[@]}

visit=()

for (( i=0; i <= 10000; i++))
do
    visit[$i]=0
done

for (( i=0; i<n; i++))
do
    visit[${arr[$i]}]=$((visit[${arr[$i]}] + 1))
done

for (( i=0; i <= 10000; i++))
do
    if [ ${visit[$i]} -gt 1 ]
    then
        cnt=$((cnt+1))
    fi
done

echo "$cnt"