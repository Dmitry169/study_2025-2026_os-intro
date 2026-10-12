#!/bin/bash
LOCK=/tmp/resource.lock

t1=${1:-2}
t2=${2:-4}

w=0
while [ -f "$LOCK" ]; do
    echo "Ресурс занят, ожидание... ($w)"
    w=$((w + 1))
    sleep "$t1"
done

touch "$LOCK"
echo "Ресурс занят процессом $$ на $t2 секунд"
sleep "$t2"
rm -f "$LOCK"
echo "Процесс $$ освободил ресурс"
