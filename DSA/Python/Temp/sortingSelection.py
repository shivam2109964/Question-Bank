def selectionSort(list):
    n = len(list)
    for i in range(n - 1):
        min_index = i
        for j in range (i + 1, n):
            if list[j] < list[min_index]:
                min_index = j
        if list[i] != min_index:
            list[i], list[min_index] = list[min_index], list[i]
        
    return list
                   
element = [78,79,89,56,23,14,2]
sortedList = selectionSort(element)
print(sortedList)