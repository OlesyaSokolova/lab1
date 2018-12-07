#!/bin/bash
echo "1. Создадим в домашней директории файл shared.txt:"
> shared.txt
echo "Посмотрим,какими правами доступа он обладает, используя команду ls -la:"
ls -la shared.txt
echo "(-rw-r--r-- чтение и запись)"
echo "2. C помощью команды chmod сделаем так, чтобы созданный файл был доступен только его владельцу и только на чтение."
chmod -r-------- shared.txt
echo "(или  chmod 400 shared.txt, где 400 - код команды)"
echo "3. С помощью команды chown сделаем пользователя valkova владельцем файла shared.txt:"
 # chown valkova shared.txt
echo "4. Проделаем операции  1-3 с директорие exchange:"
mkdir exchange
ls -la  exchange
echo "(drwxr-xr-x - просмотр содержимого, код)"
chmod 755 exchange 
echo "(аналог команды 400)"
# chown valkova exchange
echo "Если бы операции из п. 3 и п. 4 могли бы делать обычные пользователи, любой мог бы"
echo "записать вирус в чужой файл, изменить важную информацию или 'своровать' её и т.д.."
