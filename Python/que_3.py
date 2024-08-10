# Find the maximum number in python 

def max(data1, data2):
    if data1 < data2:
        return data2
    else:
        return data1

data1 = int(input("Enter the number 1: "))
data2 = int(input("Enter the number 2: "))

result = max(data1, data2)
print(f"The  maximum value is {result}")