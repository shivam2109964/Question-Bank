def findSmallestElement(arr):
    n = len(arr)
    smallest = arr[0]
    smallest_index = 0
    for i in range(1, n):
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index        

def sortingList(arr):
    newArray = []
    for i in range(len(arr)):
        smallest = findSmallestElement(arr)
        newArray.append(arr.pop(smallest))
    return newArray
    
element = [78,79,89,56,23,14,2]

result = sortingList(element)
print(result)