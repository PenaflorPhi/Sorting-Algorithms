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
for i in range(size):
    min = array[i]
    pos = i
    for j in range(i+1, size):
        if(array[j] < min):
            min = array[j]
            pos = j
        # uncomment to graph
        # barplot(array, i, j)
    array[i], array[pos] = array[pos], array[i]

# Prints array
for i in range(size):
    print(array[i])

# Keeps the graph open
# plt.show(block=True)
