#!/bin/bash
echo "1. ���������� ����� Hello 3 ����:"
#!/bin/bash
index=0
k=$1
while [[ $index < $k ]]
do
echo "Hello"
let "index=index+1"
done

echo "2. ������, ����������� ��� �����, ���������� � �������� ���������� ��������� ������:"
#!/bin/bash
sum=$(($1+$2))
echo $sum

echo "3.������������������� ������ �� 2 ������: ����� ���������� �������� �������������� ��������:"
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



