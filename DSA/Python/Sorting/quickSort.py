def quickSort(arr, left, right):
    if left < right:
        pivot_index = partition(arr, left, right)
        quickSort(arr, left, pivot_index - 1)
        quickSort(arr, pivot_index + 1, right)
        return arr

def partition(arr, left, right):
    pivot = arr[right]
    i = left - 1
    
    for j in range(left, right):
        if arr[j] < pivot:
            i = i + 1
            swap(arr, i , j)
    
    swap(arr, i + 1, right)
    return i + 1

def swap(arr, i, j ):
    arr[i], arr[j] = arr[j], arr[i]
    
    
size = int(input("Enter the size of arr: "))
element = [int(input("Enter the elements: ")) for i in range(size)]

sortedList = quickSort(element, 0, (len(element) - 1))
print(sortedList)