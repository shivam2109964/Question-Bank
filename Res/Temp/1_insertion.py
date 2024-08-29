def insertionSort(list):
    n = len(list)
    for i in range(1, n):
        key = list[i]
        j = i - 1
        while(j >= 0 and list[j] > key):
            list[j + 1] = list[j]
            j = j - 1
        list[j + 1] = key
    return list

size = int(input("Ente the size of the element: "))
element = [int(input("Enter the element: ")) for i in range(size)]

sortedList = insertionSort(element)
print(sortedList)