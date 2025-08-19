#!/bin/bash

read str

vowel=0
const=0

n=${#str}

for (( i=0; i<n; i++ ))
do
    if [[ ${str:i:1} =~ [aeiou] || ${str:i:1} =~ [AEIOU] ]]
    then
        vowel=$((vowel + 1))
    elif [[ ${str:i:1} =~ [a-z] || ${str:i:1} =~ [A-Z] ]]
    then
        const=$((const + 1))
    fi
done

echo "vowel = $vowel, const = $const"