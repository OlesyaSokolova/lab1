#!/bin/bash
echo "1. Создадим скрытый файл (имя такого файла начинается с точки):"
mkdir folder100
cd folder100
> file.txt 
> .hidden_file.txt
echo "Проверим содержимое папки с помощью команд ls и ls -a"
ls 
echo "(Видим только file.txt)"
ls -a
echo "(Видим оба файла)"
echo "2. Посмотрим, какие скрытые файлы находятся в домашней директории"
cd ..
cd ..
cd ..
ls -a
echo "3. Проверим, ищет ли команда find  по скрытым файлам:"
cd git
cd lab1
cd folder100
find -name "*.txt"
echo "(да, ищет)"
