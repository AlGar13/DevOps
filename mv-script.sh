#!/bin/bash

# Проверяем, переданы ли исходное имя файла и новое расширение
if [ $# -ne 2 ]; then
    echo "Использование: $0 <имя файла> <новое расширение>"
    exit 1
fi

# Исходное имя файла и новое расширение
original_filename=$1
new_extension=$2

# Получаем имя файла без расширения
filename_without_ext="${original_filename%.*}"

# Проверяем, отличается ли имя файла без расширения от исходного имени
if [ "$filename_without_ext" = "$original_filename" ]; then
    echo "В исходном имени файла нет расширения. Добавляем новое расширение."
    new_filename="${original_filename}.${new_extension}"
else
    echo "Заменили расширение на новое."
    new_filename="${filename_without_ext}.${new_extension}"
fi

# Переименовываем файл
mv "$original_filename" "$new_filename"

echo "Файл переименован в $new_filename"
