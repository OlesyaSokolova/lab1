#!/bin/bash
echo "1. �������� ������� ���� (��� ������ ����� ���������� � �����):"
mkdir folder100
cd folder100
> file.txt 
> .hidden_file.txt
echo "�������� ���������� ����� � ������� ������ ls � ls -a"
ls 
echo "(����� ������ file.txt)"
ls -a
echo "(����� ��� �����)"
echo "2. ���������, ����� ������� ����� ��������� � �������� ����������"
cd ..
cd ..
cd ..
ls -a
echo "3. ��������, ���� �� ������� find  �� ������� ������:"
cd git
cd lab1
cd folder100
find -name "*.txt"
echo "(��, ����)"
