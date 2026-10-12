#!/bin/bash
if [ "$#" -eq 0 ] || [ "$#" -gt 10 ]; then
    echo "Использование: $0 n1 [n2 ... n10]  (от 1 до 10 чисел)"
    exit 1
fi

sum=0
for n in "$@"; do
    sum=$((sum + n))
done
avg=$((sum / $#))

echo "Количество чисел: $#"
echo "Сумма: $sum"
echo "Среднее: $avg"
