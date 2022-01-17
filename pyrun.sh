# /bin/sh
# Clean files in previous runs
rm -r met1Py.txt met2Py.txt met3Py.txt met4Py.txt

#Run and times the Python programs
echo 'Method 1 in Python'
time python metodo1.py > met1Py.txt
echo 'Method 2 in Python'
time python metodo2.py > met2Py.txt
echo 'Method 3 in Python'
time python metodo3.py > met3Py.txt
echo 'Method 4 in Python'
time python metodo4.py > met4Py.txt
