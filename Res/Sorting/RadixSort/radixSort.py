def radix_sort(arr):
 
    max_value = max(arr)

    exp = 1
    while max_value // exp > 0:
        counting_sort_by_digit(arr, exp)
        exp *= 10
def counting_sort_by_digit(arr, exp):
    n = len(arr)
    
    output = [0] * n
    count = [0] * 10
    
    for i in range(n):
        digit = (arr[i] // exp) % 10
        count[digit] += 1
        
    for i in range(1, 10):
        count[i] += count[i - 1]
        
    for i in range(n - 1, -1, -1):
        digit = (arr[i] // exp) % 10
        output[count[digit] - 1] = arr[i]
        count[digit] -= 1
        
    for i in range(n):
        arr[i] = output[i]
                
        
b = [25,41,97,56,21,45,20]
radix_sort(b)
print(b)