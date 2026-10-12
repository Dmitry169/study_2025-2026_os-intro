#!/bin/bash
usage() {
    echo "Использование: $0 N [-d]  (без -d создаёт N файлов, с -d удаляет)"
    exit 1
}
n=$1
mode=$2
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -lt 1 ]; then
    usage
fi
if [ "$mode" == "-d" ]; then
    for ((i=1; i<=n; i++)); do
        [ -f "$i.tmp" ] && rm -f "$i.tmp"
    done
    echo "Удалено файлов: $n"
else
    for ((i=1; i<=n; i++)); do
        touch "$i.tmp"
    done
    echo "Создано файлов: $n"
fi
