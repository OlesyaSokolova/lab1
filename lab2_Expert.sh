#!/bin/bash
echo "1. �������� � �������� ���������� ���� shared.txt:"
> shared.txt
echo "���������,������ ������� ������� �� ��������, ��������� ������� ls -la:"
ls -la shared.txt
echo "(-rw-r--r-- ������ � ������)"
echo "2. C ������� ������� chmod ������� ���, ����� ��������� ���� ��� �������� ������ ��� ��������� � ������ �� ������."
chmod -r-------- shared.txt
echo "(���  chmod 400 shared.txt, ��� 400 - ��� �������)"
echo "3. � ������� ������� chown ������� ������������ valkova ���������� ����� shared.txt:"
 # chown valkova shared.txt
echo "4. ��������� ��������  1-3 � ���������� exchange:"
mkdir exchange
ls -la  exchange
echo "(drwxr-xr-x - �������� �����������, ���)"
chmod 755 exchange 
echo "(������ ������� 400)"
# chown valkova exchange
echo "���� �� �������� �� �. 3 � �. 4 ����� �� ������ ������� ������������, ����� ��� ��"
echo "�������� ����� � ����� ����, �������� ������ ���������� ��� '���������' ţ � �.�.."
