#!/bin/bash
n=${1:-10}
chars="abcdefghijklmnopqrstuvwxyz"

result=""
for ((i = 0; i < n; i++)); do
    result="${result}${chars:$((RANDOM % 26)):1}"
done

echo "$result"
