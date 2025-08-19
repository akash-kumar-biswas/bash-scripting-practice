#!/bin/bash

read -p "Enetr main string: " str
read -p "Enetr substr string: " substr

nstr="${#str}"
nsubstr="${#substr}"

cnt=0
for (( i=0; i<=nstr-nsubstr; i++ ))
do
    if [ "${str:$i:$nsubstr}" = "$substr" ]
    then
        cnt=$((cnt+1))
    fi
done

echo "$cnt"
