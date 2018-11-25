#!/bin/bash
echo 1. Создание папки:
mkdir folder
echo 2. Создание текстового файла в папке:
cd folder
> file.txt
echo' Hello, world!' > file.txt
echo 3. Просмотр, что находится в папке сейчас:
ls 
echo 4. Выход из папки:
cd ..
echo 5. Создание ещё одной папки:
mkdir newfolder
echo 6. Создание текстового файла в новой папке:
cd newfolder
>newfile.txt
echo 7. Копирование  file.txt из folder в newfile.txt папки newfolder:
cp folder/file.txt newfolder/newfile.txt
echo 8. Удаление  папки folder:
cd ..
rm -rf  folder
echo 9. Следующая команда показывает полный путь до домашней директории:
pwd
echo Команда cd без параметров отображает имена текущих диска и каталога
echo less  - команда для просмотра (но не изменения) содержимого текстовых файлов
echo  на экране;
echo  в  отличие от cat, less не нуждается в чтении всего файла перед стартом и
echo  в результате быстрее работает с большими файлами. 