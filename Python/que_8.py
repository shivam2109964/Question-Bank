# Cloning or Copying a list
"""
- Using the Slice technique
- Using the extend mehtod
- List copy using = (assignment operator)
- Using the method of Shallow Copy
- Using list comprehension
- Using the append method
- Using the copy method
- Using the method of deep copy
- Using the map method
- Using the slice() function
"""
import copy
from collections import deque 

# Copy or Clone a List Using Slicing Technique

def cloning_list(list):
    newList = list[:]
    return newList

# Clone or Copy Using Python extends () method

def cloning_extend(list):
    list_copy = []
    list_copy.extend(list)
    return list_copy

# Python Copy List Using Assignment Operator
def cloning_Assignment(list):
    list_copy =  list
    return list_copy

# Python Cloning or Copying a list Using List Comprehension
def cloning_listComprehension(list):
    list_copy = [i for i in list]
    return list_copy

# Python append() to Clone or Copy a list
def cloning_append(list):
    list_copy = []
    for item in list:
        list_copy.append(item)
    return list_copy

# Using the copy method
def cloning_copyMethod(list):
    list_copy = []
    list_copy = list.copy()
    return list_copy



size = int(input("Enter the size of the list: "))
element = [int(input(f"Enter the {i + 1} element: ")) for i in range(size)]
# Using the method of Deep Copy
deep_copy = copy.deepcopy(element)

# Using Shallow Copy in Python
element2 = copy.copy(element)

# Copying a list using Enumaration method
enum_copy = [i for a,i in enumerate(element)]

# Copying or Cloning a List using Map Function
map_copy = map(int, element)

# Using Slice Function
copy_slice = element[slice(len(element))]


copyList = cloning_list(element.copy())
extends_list = cloning_extend(element.copy())
assign_list = cloning_Assignment(element.copy())
list_comprehension = cloning_listComprehension(element.copy())
append_list = cloning_append(element.copy())
copy_method = cloning_copyMethod(element.copy())

print(f"Copying List With Slice: {copyList}")
print(f"Copying List With extends: {extends_list}")
print(f"Copying List With Assignment: {assign_list}")
print(f"Shallow Copy {element2}")
print(f"List Comprehension: {list_comprehension}")
print(f"Append Cloning {append_list}")
print(f"List Copy method {copy_method}")
print(f"Deep Copy method {deep_copy}")
print(f"Copying a list using Enumaration: {enum_copy}")
print("Map Copying:", *map_copy)
print(f"Copying Slice: {copy_slice}")