def selectionSort(list):
    n = len(list)
    for i in range(0, n - 1):
        min_index = i
        for j in range(i + 1, n):
            if list[j] < list[min_index]:
                min_index = j
        list[i], list[min_index] = list[min_index], list[i]
    return list

a = [78,58,52,26,35,45,95,15]
sorting = selectionSort(a)
print(sorting)