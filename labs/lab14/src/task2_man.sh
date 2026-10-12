#!/bin/bash
cmd="$1"
mandir="/usr/share/man/man1"

if [ -z "$cmd" ]; then
    echo "Справка для '' не найдена"
    exit 1
fi

page=$(ls "$mandir" | grep "^${cmd}\.1")

if [ -z "$page" ]; then
    echo "Справка для '$cmd' не найдена"
    exit 1
fi

less "$mandir/$page"
