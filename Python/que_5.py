# Write a program to check value is present in the list or is not

def isPresent(list, value):
    if value in list:
        return True
    else:
        return False
        
size = int(input("Enter the size of the list: "))

element = [int(input(f"Enter the {i + 1} element: ")) for i in range(size)]

value = int(input("Enter the value you want to check: "))

result = isPresent(element, value)

print(f"Is value present in list: {result}")