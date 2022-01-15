from plot import barplot
import matplotlib.pyplot as plt
import random
# Resultados aceptablemente rapidos para n <= 50 cuando se grafica y
# n <= 10000 cuando solo se imprime
size = 20

# Creates a random array of numbers
array = [0] * size
for i in range(size):
    array[i] = random.randint(0, int(size))
    # print(i, " - ", array[i])

# Sorts the array from smallest to largest
for i in range(size):
    min = array[i]
    pos = i
    for j in range(i+1, size):
        if(array[j] < min):
            min = array[j]
            pos = j
        # uncomment to graph
        barplot(array, i, j)
    array[i], array[pos] = array[pos], array[i]

# Prints array
# for i in range(size):
#     print(i, " - ", array[i])
