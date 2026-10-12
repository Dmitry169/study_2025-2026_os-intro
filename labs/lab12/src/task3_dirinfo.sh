#!/bin/bash
dir="${1:-.}"

for f in "$dir"/*; do
    [ -e "$f" ] || continue
    name=$(basename "$f")
    type=$(stat -c "%F" "$f")
    perms=$(stat -c "%A" "$f")
    size=$(stat -c "%s" "$f")
    printf "%-25s %-20s %-12s %s байт\n" "$name" "$type" "$perms" "$size"
done
