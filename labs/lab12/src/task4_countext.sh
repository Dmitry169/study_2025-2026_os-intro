#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 .расширение каталог"
    exit 1
fi

ext="$1"
dir="$2"

if [ ! -d "$dir" ]; then
    echo "Ошибка: каталог '$dir' не найден"
    exit 1
fi

count=$(find "$dir" -maxdepth 1 -type f -name "*${ext}" | wc -l)
echo "Файлов с расширением '$ext' в '$dir': $count"
