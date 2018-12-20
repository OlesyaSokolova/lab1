#!/bin/bash
wget http://factorized.net/crusoe.txt

echo "все слова, начинающиеся на 'z'"
egrep "\bz" crusoe.txt

echo "все слова из 16 букв"
egrep "[[:alpha:]]{16}" crusoe.txt

echo "все слова, начинающиеся на 'a' и заканчивающиеся на 'c'"
egrep "\sa[[:alpha:]]*c\b" crusoe.txt

echo "все слова, начинающиеся на 'ab', но у которых третья буква не 'o'"
egrep "\sab[^o]*\b" crusoe.txt




wget http://factorized.net/patterns.txt

echo "состоят только из цифр"
egrep "^[0-9]+$" patterns.txt

echo "состоят только из букв"
egrep "^[[:alpha:]]+$" patterns.txt



echo "все строки, которые могут являться валидными российскими автомобильными"
echo " номерами (используя заглавные английские буквы)"
echo "Валидным номером будем считать следующую комбинацию:"
echo "-буква"
echo "-три цифры"
echo "-две буквы"
echo "-две или три цифры"

egrep  "^[ABEKMHOPCTYX][0-9]{3}[ABEKMNOPCTYX]{2}[0-9]{2,3}$" patterns.txt
