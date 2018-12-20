#!/bin/bash
echo "1. Напечатаем слово Hello 3 раза:"
#!/bin/bash
index=0
k=$1
while [[ $index < $k ]]
do
echo "Hello"
let "index=index+1"
done

echo "2. Скрипт, суммирующий два числа, переданных в качестве параметров командной строки:"
#!/bin/bash
sum=$(($1+$2))
echo $sum

echo "3.Усовершенствованный скрипт из 2 пункта: после переменных передаем арифметическую операцию:"
#!/bin/bash
if [ $3 = "add" ]
then
let result=$1+$2
fi
if [ $3 = "sub" ]
then
let result=$1-$2
fi
if [ $3 = "mul" ]
then
let result=$1*$2
fi
echo $result


echo "4.Использование переменной окружения:"
export ARITHMETIC_OP=add
#!/bin/bash
op=$3
if [ -z "$3"]
op=$ARITHMETIC_OP
fi
if [ $op = "add" ]
then
let result=$1+$2
fi
if [ $op = "sub" ]
then
let result=$1-$2
fi
if [ $op = "mul" ]
then
let result=$1*$2
fi
echo $result
