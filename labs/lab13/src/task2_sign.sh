#!/bin/bash
echo -n "Введите число: "
read n
echo "$n" | ./sign
code=$?
case $code in
    1) echo "Число $n положительное" ;;
    2) echo "Число $n отрицательное" ;;
    0) echo "Число $n равно нулю" ;;
    3) echo "Ошибка: введено не число" ;;
esac
