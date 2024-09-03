def binarySearch(arr, left, right, target_value):
    while left <= right:
        mid = left + (right - left) // 2
        
        if arr[mid] == target_value:
            return mid
        
        elif arr[mid] < target_value:
            left = mid + 1
        else:
            right = mid - 1
    return -1

def exponentialSearch(arr, target):
    n = len(arr)
    if arr[0] == target:
        return 0
    
    i = 1
    while (i < n and arr[i] <= target):
        i *= 2
        
    return binarySearch(arr, i // 2, min(i , n - 1), target)
    
e =  [1, 2, 4, 7, 9, 12, 15, 18, 21, 24]
tar = 15

result = exponentialSearch(e, tar)

if result != -1:
    print(f"Element is found at {result}")
else: 
    print("Element is not found")