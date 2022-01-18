# /bin/sh
# Clean files in previous runs
rm -rf OutputC Compiled
mkdir OutputC Compiled

# Compiles the C programs.
gcc -o Compiled/BubbleSortC.out BubbleSort.c
gcc -o Compiled/SelectionSortC.out SelectionSort.c
gcc -o Compiled/InsertionSortC.out InsertionSort.c
gcc -o Compiled/QuickSortC.out QuickSort.c

# Runs and times the C programs.
echo 'Bubble Sort in C'
time ./Compiled/BubbleSortC.out > OutputC/BubbleC.txt
echo 'Selection Sort in C'
time ./Compiled/SelectionSortC.out > OutputC/SelectionC.txt
echo 'Insertion Sort in C'
time ./Compiled/InsertionSortC.out > OutputC/InsertionC.txt
echo 'QuickSort in C'
time ./Compiled/QuickSortC.out > OutputC/QuickSortC.txt
