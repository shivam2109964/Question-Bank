def quickSort(list, low, high):
    if low < high:
        pivot_index = partition(list, low, high)
        quickSort(list, low, pivot_index)
        quickSort(list, pivot_index + 1, high)
    return list
def partition(list, low, high):
    pivot = list[low]
    left = low
    right = high
    
    while(True):
        while(list[left] < pivot):
            left += 1
        while(list[right] > pivot):
            right -= 1
        if left >= right:
            return right
        list[left], list[right] = list[right], list[left]

a = [10,25,78,96,35,40,52]
sortedList = quickSort(a, 0, len(a) -1)
print(sortedList)