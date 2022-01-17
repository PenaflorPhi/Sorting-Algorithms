# /bin/sh
# Clean files in previous runs
rm -r met1C.txt met2C.txt met3C.txt met4C.txt

# Compiles the C programs.
gcc -o metodo1C.out metodo1.c
gcc -o metodo2C.out metodo2.c
gcc -o metodo3C.out metodo3.c

# Runs and times the C programs.
echo 'Method 1 in C'
time ./metodo1C.out > met1C.txt
echo 'Method 2 in C'
time ./metodo2C.out > met2C.txt
echo 'Method 3 in C'
time ./metodo3C.out > met3C.txt
echo 'Method 4 in C'
time ./metodo4C.out > met4C.txt
gcc -o metodo4C.out metodo4.c
