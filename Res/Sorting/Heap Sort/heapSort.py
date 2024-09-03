def heapSort(arr):
    n = len(arr)
    mid = n // 2
    for i in range(mid - 1, -1, -1):
        heapify(arr, n , i)
    
    for i in range(n - 1, 0 , -1):
        arr[0], arr[i] = arr[i], arr[0]
        heapify(arr, i, 0)
        
def heapify(arr, n, i):
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
    
    if left < n and arr[left] > arr[largest]:
        largest = left
        
    if right < n and arr[right] > arr[largest]:
        largest = right
    
    if(largest != i):
        arr[i], arr[largest] = arr[largest], arr[i]
        heapify(arr, n, largest)

e = [85,96,74,10,20,54,94,36,40,1]
heapSort(e)
print(e)