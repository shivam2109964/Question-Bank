def counting(arr):
    n = len(arr)
    max_value = max(arr)
    min_value = min(arr)
    range_value = max_value - min_value + 1
    
    count = [0] * range_value 
    output = [0] * n
    
    for i in range(n):
        count[arr[i] - min_value] += 1
        
    for i in range(1, len(count)):
        count[i] += count[i - 1]
        
    for i in range(n - 1, -1, -1):
        output[count[arr[i] - min_value] - 1] = arr[i]
        count[arr[i] - min_value] -= 1                
    
    for i in range(n):
        arr[i] = output[i]
        
e = [9,5,1,6,10]    
counting(e)
print(e)
