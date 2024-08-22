def selectionSort(list):
    length = len(list)
    for i in range(length - 1):
        min_index = i
        for j in range(i + 1, length):
            if list[j] < list[min_index]:
                min_index = j
        list[i], list[min_index] = list[min_index], list[i]
    return list
        

size = int(input("Enter the list size: "))

element = [int(input("Enter the elements: ")) for i in range(size)]
selSort = selectionSort(element.copy())
print(selSort)