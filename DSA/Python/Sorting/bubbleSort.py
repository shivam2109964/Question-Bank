def bubbleSort(list):
    length = len(list)
    for i in range(length - 1):
        for j in range(length - 1 - i):
            if list[j] > list[j + 1]:
                list[j], list[j + 1] = list[j + 1], list[j]
    return list

size = int(input("Enter the size of the list: "))
element = [int(input("Enter the elements: ")) for i in range(size)]

bubSort = bubbleSort(element)
print(bubSort)
