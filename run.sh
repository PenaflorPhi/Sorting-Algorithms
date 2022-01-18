# /bin/sh
# Clean files in previous runs
rm -rf Output Compiled
mkdir Output Compiled

# Compiles the C programs.
gcc -o Compiled/BubbleSortC.out BubbleSort.c
gcc -o Compiled/SelectionSortC.out SelectionSort.c
gcc -o Compiled/InsertionSortC.out InsertionSort.c
gcc -o Compiled/QuickSortC.out QuickSort.c

# Runs and times the C programs.
echo 'Bubble Sort in C'
time ./Compiled/BubbleSortC.out > Output/BubbleC.txt
echo 'Selection Sort in C'
time ./Compiled/SelectionSortC.out > Output/SelectionC.txt
echo 'Insertion Sort in C'
time ./Compiled/InsertionSortC.out > Output/InsertionC.txt
echo 'QuickSort in C'
time ./Compiled/QuickSortC.out > Output/QuickSortC.txt


#Run and times the Python programs
echo 'Bubble Sort in Python'
time python BubbleSort.py > Output/BubblePy.txt
echo 'Selection Sort in Python'
time python SelectionSort.py > Output/SelectionPy.txt
echo 'Insertion Sort in Python'
time python InsertionSort.py > Output/InsertionPy.txt
echo 'QuickSort in Python'
time python QuickSort.py > Output/QuickSortPy.txt
