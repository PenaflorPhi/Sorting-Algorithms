# /bin/sh
# Clean files in previous runs
rm -r met1Py met2Py met3Py met4Py

#Run Python programs
echo 'Method 1 in Python'
time python metodo1.py > met1Py
echo 'Method 2 in Python'
time python metodo2.py > met2Py
echo 'Method 3 in Python'
time python metodo3.py > met3Py
echo 'Method 4 in Python'
time python metodo4.py > met4Py
