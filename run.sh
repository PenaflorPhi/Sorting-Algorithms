# /bin/sh
# Clean files in previous runs
rm -r met1C.txt met2C.txt met3C.txt met4C.txt
rm -r met1Py.txt met2Py.txt met3Py.txt met4Py.txt
 

# Compiles the C programs.
gcc -o metodo1C.out metodo1.c
gcc -o metodo2C.out metodo2.c
gcc -o metodo3C.out metodo3.c
gcc -o metodo4C.out metodo4.c

# Runs and times the C programs.
echo 'Method 1 in C'
time ./metodo1C.out > met1C.txt
echo 'Method 2 in C'
time ./metodo2C.out > met2C.txt
echo 'Method 3 in C'
time ./metodo3C.out > met3C.txt
echo 'Method 4 in C'
time ./metodo4C.out > met4C.txt

#Run and times the Python programs
echo 'Method 1 in Python'
time python metodo1.py > met1Py.txt
echo 'Method 2 in Python'
time python metodo2.py > met2Py.txt
echo 'Method 3 in Python'
time python metodo3.py > met3Py.txt
echo 'Method 4 in Python'
time python metodo4.py > met4Py.txt
