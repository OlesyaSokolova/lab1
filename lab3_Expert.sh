#!/bin/bash
wget http://factorized.net/crusoe.txt

echo "��� �����, ������������ �� 'z'"
egrep "\sz" crusoe.txt

echo "��� ����� �� 16 ����"
egrep "[[:alpha:]]{16}" crusoe.txt

echo "��� �����, ������������ �� 'a' � ��������������� �� 'c'"
egrep "\sa[[:alpha:]]*c\b" crusoe.txt

echo "��� �����, ������������ �� 'ab', �� � ������� ������ ����� �� 'o'"
egrep "\sab[^o]*\b" crusoe.txt




wget http://factorized.net/patterns.txt

echo "������� ������ �� ����"
egrep "^[0-9]+$" patterns.txt

echo "������� ������ �� ����"
egrep "^[[:alpha:]]+$" patterns.txt



echo "��� ������, ������� ����� �������� ��������� ����������� ��������������"
echo " �������� (��������� ��������� ���������� �����)"
echo "�������� ������� ����� ������� ��������� ����������:"
echo "-�����"
echo "-��� �����"
echo "-��� �����"
echo "-��� ��� ��� �����"

egrep  "^[ABEKMHOPCTYX][0-9]{3}[ABEKMNOPCTYX]{2}[0-9]{2,3}$" patterns.txt
