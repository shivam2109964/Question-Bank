def insertionSort(list):
    size = len(list)
    for i in range(1, size):
        key = list[i]
        j = i - 1
        while j >= 0 and list[j] > key:
            list[j + 1] = list[j]
            j = j - 1
        list[j + 1] = key
    return list

listt = [45,89,67,25,75,31,68,97]
sortedList = insertionSort(listt)
print(sortedList)