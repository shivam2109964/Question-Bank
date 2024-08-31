def quickSort(list, left, right):
    if left < right:
        pivot_index = partition(list, left, right)
        quickSort(list, left, pivot_index - 1)
        quickSort(list, pivot_index + 1, right)
    return list
        
def partition(list, left, right):
    pivot = list[right]
    i = left - 1
    for j in range(left, right):
        if list[j] < pivot:
            i += 1
            list[i], list[j] = list[j], list[i]
    list[i + 1], list[right] = list[right], list[i + 1]
    return i + 1        

a = [85,49,62,41,75,85,96,35]
quickDone = quickSort(a, 0, len(a) - 1)
print(quickDone)
