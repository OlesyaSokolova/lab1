#!bin/bash
echo "1. ������ ���������� ���������� ����� Friday � ������� ��������� �����"
wget http://factorized.net/crusoe.txt
echo "(���������� ���������� ����� 188)"
echo "2.������� ��� ����� Friday �� Saturday"
sed -i s/Friday/Saturday/g crusoe.txt
echo "3.��������� �������� ����� ����� �� ��������"
echo '1 2
2 2
3 7' > input.txt
echo "���������:"
awk '{
s1+=$1
s2+=$2
}
END{
print s1, s2
}' input.txt


