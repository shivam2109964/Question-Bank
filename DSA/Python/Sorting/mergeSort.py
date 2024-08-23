def margeSort(list):
    length = len(list)
    # Base case
    if length <=  1:
        return list
    middle = length // 2
    
    left_half = list[:middle]
    right_half = list[middle:]
    
    left_half = margeSort(left_half)
    right_half = margeSort(right_half)
    
    return merge(left_half, right_half)

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

size = int(input("Enter the size of the list: "))

element = [int(input("Enter the element: ")) for i in range(size)]

sortedList = margeSort(element)
print(sortedList)

