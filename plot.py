import matplotlib.pyplot as plt
fig, ax = plt.subplots()


def barplot(data: list, index: int = None, index2: int = None, index3: int = None):
    default_color = 'cyan'
    colors = [default_color for x in range(len(data))]
    if index is not None:
        colors[index] = 'yellow'
    if index2 is not None:
        colors[index2] = 'red'
    if index3 is not None:
        colors[index3] = 'pink'
    ax.clear()
    ax.bar(range(len(data)), data, width=1, edgecolor="white", linewidth=0.7, color=colors)
    plt.draw()
    plt.pause(0.01)
