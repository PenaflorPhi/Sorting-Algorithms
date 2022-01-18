# from plot import barplot
# import matplotlib.pyplot as plt
import random
# Recommended size for plotting is around 50
size = 10000
# size = 50

# Creates a random array of numbers
array = [0] * size
for i in range(size):
    array[i] = random.randint(0, int(size))
    print(array[i])

print('\n')

# Sorts the array from smallest to largest
for i in range(1, len(array)):
    for j in range(i, 0, -1):
        if(array[j-1] > array[j]):
            array[j-1], array[j] = array[j], array[j-1]
        # uncomment to graph
        # barplot(array, i, j)

# Prints array
for i in range(size):
    print(array[i])

# Keeps the graph open
# plt.show(block=True)
