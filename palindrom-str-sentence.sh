#!/bin/bash

read -p "Enter string: " str

n=${#str}

j=0;
cnt=0
for (( i=0; i<n;i++ ))
do
    if [ "${str:$i:1}" = " " ]
    then
        f=1
        first=$j
        second=$((i-1))
        while [ $first -le $second ]
        do  
            if [ "${str:first:1}" != "${str:second:1}" ]
            then
                f=0
                break
            fi
            first=$((first+1))
            second=$((second-1))
        done

        j=$((i+1))

        if [ $f -eq 1 ]
        then
            cnt=$((cnt+1))
        fi
    fi
done

echo "$cnt"