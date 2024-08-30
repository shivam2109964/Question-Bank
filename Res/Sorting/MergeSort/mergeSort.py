def mergeSort(list):
    n = len(list)
    # Base Case
    if n <= 1:
        return list
    
    mid = n // 2
    left_half = list[: mid]
    right_half = list[mid :]
    
    left_half = mergeSort(left_half)
    right_half = mergeSort(right_half)
    
    return merge(left_half, right_half)

def merge(left, right):
    result = []
    i = 0
    j = 0
    
    while(i < len(left) and j < len(right)):
        if left[i] < right[j]:
            result.append(left[i])
            i = i + 1
        else: 
            result.append(right[j])
            j = j + 1
    while(i < len(left)):
        result.append(left[i])
        i = i + 1
    while(j < len(right)):
        result.append(right[j])
        j = j + 1
    return result


a = [8,7,6,9,1,0,3,4]
sortedList = mergeSort(a)
print(sortedList)