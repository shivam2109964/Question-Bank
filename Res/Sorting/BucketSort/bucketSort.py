def bucketSort(arr):
    n = len(arr)
    if n <= 1:
        return
    
    max_value = max(arr)
    
    bucket = [[] for _ in range(n)]
    
    for i in range(n):
        bucket_index = arr[i] * n // (max_value + 1)
        bucket[bucket_index].append(arr[i])
        
    for i in range(n):
        bucket[i].sort()
    
    index = 0
    for i in range(n):
        for j in range(len(bucket[i])):
            arr[index] = bucket[i][j]
            index += 1

arrs = [25, 10, 47, 95, 62, 30, 75, 45]
bucketSort(arrs)
print(arrs)