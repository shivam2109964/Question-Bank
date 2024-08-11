def reverseList_one(list):
    newList = list[::-1]
    return newList

def reverseList_two(size, list):
    for i in range(size // 2):
        list[i], list[size - i - 1] = list[size - i - 1], list[i]
    return list

# Reverse by using two pointer
def reverseList(lst):
    left = 0
    right = len(lst) - 1
    while left < right:
        # Swap elements
        temp = lst[left]
        lst[left] = lst[right]
        lst[right] = temp
        # Move the pointers towards the center
        left += 1
        right -= 1
    return lst

size = int(input("Enter the size of the list: "))
element = [int(input(f"Enter the {i + 1} element: ")) for i in range(size)]


result_1 = reverseList_one(element.copy())
result_2 = reverseList_two(size, element.copy())
result_3 = reverseList(element.copy())

print(result_1)
print(result_2)
print(result_3)