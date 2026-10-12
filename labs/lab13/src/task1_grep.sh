#!/bin/bash
usage() {
    echo "Использование: $0 -iфайл_вход [-oфайл_выход] -pшаблон [-C] [-n]"
    exit 1
}
infile=""
outfile=""
pattern=""
ignorecase="-i"
shownum=""
while getopts "i:o:p:Cn" opt; do
    case $opt in
        i) infile=$OPTARG ;;
        o) outfile=$OPTARG ;;
        p) pattern=$OPTARG ;;
        C) ignorecase="" ;;
        n) shownum="-n" ;;
        *) usage ;;
    esac
done
if [ -z "$pattern" ] || [ -z "$infile" ]; then
    usage
fi
if [ ! -f "$infile" ]; then
    echo "Ошибка: файл '$infile' не найден"
    exit 1
fi
if [ -n "$outfile" ]; then
    grep $ignorecase $shownum "$pattern" "$infile" > "$outfile"
    echo "Результат записан в '$outfile'"
else
    grep $ignorecase $shownum "$pattern" "$infile"
fi
