# import matplotlib.pyplot as plt
# from plot import barplot
import random
# Recommended size for plotting is around 200
size = 10000
# size = 200

# Creates a random array of numbers
array = [0] * size
for i in range(size):
    array[i] = random.randint(0, int(size))
    print(array[i])

print('\n')


def partition(array, low, high):
    pivot = array[low]
    left = low + 1
    right = high
    while True:
        while (left <= right and array[left] <= pivot):
            left += 1
        while (left <= right and array[right] >= pivot):
            right -= 1
        if right < left:
            break
        else:
            array[left], array[right] = array[right], array[left]
    array[low], array[right] = array[right], array[low]
    return right


def quicksort(array, low, high):
    if low < high:
        pivot = partition(array, low, high)
        quicksort(array, low, pivot - 1)
        quicksort(array, pivot + 1, high)
        # barplot(array, low, high)


quicksort(array, 0, len(array) - 1)
for i in range(size):
    print(array[i])

# Keeps the graph open
# plt.show(block=True)
