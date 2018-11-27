#!bin/bash
echo "1. Скачивание крупного текстового файла по данной ссылке в папку:"
mkdir special_folder_for_the_text
cd special_folder_for_the_text
wget http://factorized.net/crusoe.txt
echo "2.Создание папки и нескольких текстовых файлов в ней:"
cd ..
mkdir folder
cd folder
> test1.txt
> text.txt
> informatika.txt
echo "3. Поиск всех файлов формата *.txt"
find -name "*.txt"
echo "4. Поиск всех файлов того же формата, но если мы не находимся в данной папке"
cd ..
find ./folder -name "*.txt"
echo "5. Поиск и вывод всех строк, содержащих слово  Friday:"
cd special_folder_for_the_text
grep 'friday' crusoe.txt
cd ..
cd folder
echo "6. Запись фразы в конец файла:"
echo "Hello world!" >> test1.txt
echo "7. Запись фразы в файл и удаление того, что там было до этого:"
echo "Hello world" > test1.txt
echo "8. Вывод в файл список файлов в текущей директории"
ls > informatika.txt
echo "9. Поиск всех файлов *.txt на всем диске:"
echo "(2>/dev/null удалет всеь мусор, выводимый на экран этой командой)"
cd ..
cd ..
cd ..
find -name "*.txt" > home/olesya/Рабочий\стол/lab1/folder/text.txt 2>/dev/null


