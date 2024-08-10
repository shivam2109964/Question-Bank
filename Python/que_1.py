# Program to Interchange first and last element in list 
def interchange(newlist):
    size = len(newlist)
    
    temp = newlist[0]
    newlist[0] = newlist[size - 1]
    newlist[size - 1] = temp
    return newlist

size = int(input("Enter the size of the list: "))

element = [int(input(f"Enter the {i + 1} element: ")) for i in range(size)]

print(f"Before Interchange the list is {element}")

listData = interchange(element)

print(f"After Interchage the list is {listData}")