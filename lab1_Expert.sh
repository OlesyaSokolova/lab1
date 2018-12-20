#!bin/bash
echo "1. Найдем количество упоминаний слова Friday в большом текстовом файле"
wget http://factorized.net/crusoe.txt
grep -o -i 'Friday' crusoe.txt | wc -l
echo "(Количество упоминаний равно 190)"
echo "2.Заменим все слова Friday на Saturday"
sed -i s/Friday/Saturday/g crusoe.txt
echo "3.Программа подсчета суммы чисел по столбцам"
echo '1 2
2 2
3 7' > input.txt
echo "результат:"
awk '{
s1+=$1
s2+=$2
}
END{
print s1, s2
}' input.txt


