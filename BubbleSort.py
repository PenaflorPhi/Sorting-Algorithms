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

flag = False

# Sorts the array from smallest to largest
while (not flag):
    for i in range(len(array) - 1):
        if (array[i+1] < array[i]):
            flag = True
            array[i], array[i+1] = array[i+1], array[i]
        # uncomment to graph
        # barplot(array, i+1)
    if(flag):
        flag = False
    else:
        flag = True

# Prints array
for i in range(size):
    print(array[i])

# Keeps the graph open
# plt.show(block=True)
