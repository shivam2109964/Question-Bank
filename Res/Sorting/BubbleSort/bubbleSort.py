def bubbleSort(list):
    size = len(list)
    for i in range(size):
        for j in range(size - i - 1):
            if list[j] > list[j + 1]:
                list[j], list[j + 1] = list[j + 1], list[j]
    return list

a = [85,52,36,12,21,45,87]
sortedList = bubbleSort(a)
print(sortedList)