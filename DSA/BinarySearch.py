def searchValue(item, list):
    low = 0
    high = len(list) - 1
    while low <= high:
        mid = (low + high) // 2
        guess  = list[mid]
        if guess == item:
            return mid
        if guess > item:
            high = mid - 1
        else:
            low = mid + 1
    return None
            
              

size = int(input("Enter the size of the list: "))

element = [int(input("Enter the number: ")) for i in range(size)]

item = int(input("Enter the element you want to search: "))

result = searchValue(item, element)
print(result)