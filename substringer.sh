#!/bin/bash

# Проверяем, достаточно ли аргументов передано
if [ $# -lt 3 ]; then
    echo "Использование: $0 <исходная строка> <начальный индекс> <конечный индекс> [delete]"
    exit 1
fi

# Аргументы скрипта
original_string=$1
start_index=$2
end_index=$3
delete_substring=${4:-""}

# Проверяем, что индексы корректные
if ! [[ $start_index =~ ^[0-9]+$ && $end_index =~ ^[0-9]+$ && $start_index -le $end_index ]]; then
    echo "Начальный и конечный индексы должны быть целыми числами, причём начальный индекс не больше конечного."
    exit 1
fi

# Вычисляем длину подстроки
length=$((end_index - start_index + 1))

if [ "$delete_substring" == "delete" ]; then
    # Удаляем подстроку
    left_part=$(echo "$original_string" | cut -c 1-$(($start_index - 1)))
    right_part=$(echo "$original_string" | cut -c $(($end_index + 1))-)
    result="${left_part}${right_part}"
else
    # Извлекаем подстроку
    result=$(echo "$original_string" | cut -c $start_index-$end_index)
fi

echo $result
