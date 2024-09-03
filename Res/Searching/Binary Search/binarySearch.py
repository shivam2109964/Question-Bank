def binarySearch(arr, target):
    n = len(arr)
    low = 0
    high = n - 1
    
    while(low <= high):
        mid = (low + high) // 2
        
        if target == arr[mid]:
            return mid
        if target > arr[mid]:
            low = mid + 1
        else:
            high = mid - 1
            
    return -1 

def heapSort(arr):
    n = len(arr)
    # Build max heap
    mid = n // 2
    for i in range(mid - 1, -1, -1):
        heapfiy(arr, n, i)
        
    for i in range(n - 1 , 0 , -1 ):
        arr[0], arr[i] = arr[i], arr[0]
        heapfiy(arr, i, 0)


def heapfiy(arr, n, i):
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
    
    if left < n and arr[left] > arr[largest]:
        largest = left
    if right < n and arr[right] > arr[largest]:
        largest = right
    
    if largest != i:
        arr[i], arr[largest] = arr[largest], arr[i]
        heapfiy(arr, n, largest)    
    
e = [1, 3, 4, 5, 10, 91, -5, 6]
value = 10
heapSort(e)
result = binarySearch(e, value)
if result != -1:
    print(f"Element is found at index: {result}")
else:
    print("Element is not found")