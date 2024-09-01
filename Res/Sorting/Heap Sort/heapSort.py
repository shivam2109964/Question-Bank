def heapSort(list):
    n = len(list)
    mid = n // 2
    for i in range(mid - 1, -1, -1):
        heapify(list, n , i)
    
    for i in range(n - 1, 0 , -1):
        list[0], list[i] = list[i], list[0]
        heapify(list, i, 0)
        
def heapify(list, n, i):
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
    
    if left < n and list[left] > list[largest]:
        largest = left
        
    if right < n and list[right] > list[largest]:
        largest = right
    
    if(largest != i):
        list[i], list[largest] = list[largest], list[i]
        heapify(list, n, largest)

e = [85,96,74,10,20,54,94,36,40,1]
heapSort(e)
print(e)