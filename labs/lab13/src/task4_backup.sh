#!/bin/bash
dir=${1:-.}
if [ ! -d "$dir" ]; then
    echo "Ошибка: каталог '$dir' не найден"
    exit 1
fi
if [ "$2" == "-w" ]; then
    count=$(find "$dir" -maxdepth 1 -type f -mtime -7 | wc -l)
    if [ "$count" -eq 0 ]; then
        echo "Нет файлов, изменённых за последнюю неделю"
        exit 0
    fi
    find "$dir" -maxdepth 1 -type f -mtime -7 -print0 | tar -cf backup_week.tar --null -T -
    echo "Создан архив backup_week.tar ($count файлов)"
else
    tar -cf backup_all.tar -C "$dir" .
    echo "Создан архив backup_all.tar"
fi
