def linearSearch(arr, target):
    n = len(arr)
    for i in range(n):
        if arr[i] == target:
            return i
    return -1

numbers = [10, 23, 45, 70, 11, 15]
tar = 11
result = linearSearch(numbers, tar)
print(result)
if result != -1:
    print(f"Element is found at index: {result}")
else:
    print("Element is not found")
    