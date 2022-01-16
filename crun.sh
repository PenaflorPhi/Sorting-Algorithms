# /bin/sh
rm -r met1C met2C met3C met4C

gcc -o met1_inC metodo1.c
gcc -o met2_inC metodo2.c
gcc -o met3_inC metodo3.c
gcc -o met4_inC metodo4.c

echo 'Method 1 in C'
time ./met1_inC > met1C
echo 'Method 2 in C'
time ./met2_inC > met2C
echo 'Method 3 in C'
time ./met3_inC > met3C
echo 'Method 4 in C'
time ./met4_inC > met4C
