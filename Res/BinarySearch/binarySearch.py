def binarySearch(sortedList, item):
    low = 0
    high = len(sortedList) - 1
    
    while low <= high:
        mid = (low + high)
        guess = sortedList[mid]
        
        if guess == item:
            return mid
        if guess < item:
            low = mid + 1
        else:
            high = mid - 1
    return None


def mergeSort(list):
    n = len(list)
    if n <= 1:
        return list
    mid = n // 2
    left = list[0 : mid]
    right = list[mid :]
    
    left = mergeSort(left)
    right = mergeSort(right)
    
    return merge(left, right)

def merge(left, right):
    result = []
    i = 0
    j = 0
    
    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
            
    while i < len(left):
        result.append(left[i])
        i += 1
    
    while j < len(right):
        result.append(right[j])
        j += 1

    return result

element = [85,97,64,25,36,78,45,10]
sortedList = mergeSort(element)
print(sortedList)

bs = binarySearch(sortedList, 78)
print(bs)