
#!/bin/bash
echo "1. С помощью команды whereis найдем расположение команд cat, grep, less, find, "
whereis cat
echo "cat: /bin/cat /usr/share/man/man1/cat.1.gz"
whereis grep
echo "grep: /bin/grep /usr/share/man/man1/grep.1.gz"
whereis less
echo "less: /bin/less /usr/bin/less /usr/bin/X11/less /usr/share/man/man1/less.1.gz /usr/share/man/man3/less.3perl.gz"
whereis find
echo "find: /usr/bin/find /usr/bin/X11/find /usr/share/man/man1/find.1.gz"
echo "команда which показывает полный путь к указанным командам"
which cat
echo "/bin/cat"
which grep
echo "/bin/grep"
which less
echo "/usr/bin/less"
which find
echo "/usr/bin/find"
echo "Итак, команды cat, less, grep и find находятся в директории bin."
echo "2. Выведeм на экран значение переменной окружения $PATH (echo $PATH)"
echo $PATH
echo "(/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games)"
echo "Переменная окружения PATH  указывает путь поиска исполняемых файлов."
echo "Видим, что директория, найденная в п.1 входит в $PATH."
echo " Переменные окружения используются для хранения текстовых строк пользователя и информации о настройках операционных систем."
echo "3. Напишем небольшую программу на С, скомпилируем её и запустим, находясь в той же директории"
mkdir  codes
cd codes
 > coding.c
 echo 'int main() {printf("Hello, world! :)"); }' > coding.c
 gcc -include stdio.h coding.c -o coding.exe
 gcc coding.c -o coding.exe
./coding.exe
echo "Выйдем из папки codes и запустим программу:"
cd ..
 codes/./coding.exe
echo "4. Добавим директорию, в которой лежит программа из п.3 в $PATH (export PATH=$PATH:<новая директория>)."
export PATH=$PATH:codes
