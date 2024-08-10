# Write a program to swap two element in a list

def swap_twoList(newList, pos1, pos2):
    temp = newList[pos1 - 1]
    newList[pos1 - 1] = newList[pos2 - 1]
    newList[pos2 - 1] = temp
    return newList
    
size = int(input("Enter the size of list: "))
element = [int(input(f"Enter the {i+1} element: ")) for i in range(size)]
pos1 = int(input("Enter the pos1: "))
pos2 = int(input("Enter the pos2: "))

print(f"Before Swapping: {element}")
newList_data = swap_twoList(element, pos1, pos2)
print(f"After Swapping: {newList_data}")
