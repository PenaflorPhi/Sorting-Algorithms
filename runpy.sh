# /bin/sh
# Clean files in previous runs
rm -rf OutputPy
mkdir OutputPy

#Run and times the Python programs
echo 'Bubble Sort in Python'
time python BubbleSort.py > OutputPy/BubblePy.txt
echo 'Selection Sort in Python'
time python SelectionSort.py > OutputPy/SelectionPy.txt
echo 'Insertion Sort in Python'
time python InsertionSort.py > OutputPy/InsertionPy.txt
echo 'QuickSort in Python'
time python QuickSort.py > OutputPy/QuickSortPy.txt
