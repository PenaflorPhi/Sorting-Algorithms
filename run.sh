# /bin/sh
# Clean files in previous runs
rm -r met1C met2C met3C met4C
rm -r met1Py met2Py met3Py met4Py
 

# Compiles, runs and times C programs.
gcc -o metodo1.out metodo1.c
gcc -o metodo2.out metodo2.c
gcc -o metodo3.out metodo3.c
gcc -o metodo4.out metodo4.c

echo 'Method 1 in C'
time ./met1_inC > met1C
echo 'Method 2 in C'
time ./met2_inC > met2C
echo 'Method 3 in C'
time ./met3_inC > met3C
echo 'Method 4 in C'
time ./met4_inC > met4C

#Run Python programs
echo 'Method 1 in Python'
time python metodo1.py > met1Py
echo 'Method 2 in Python'
time python metodo2.py > met2Py
echo 'Method 3 in Python'
time python metodo3.py > met3Py
echo 'Method 4 in Python'
time python metodo4.py > met4Py
