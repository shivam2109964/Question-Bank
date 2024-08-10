# Find the minimum number

def minimum(data1, data2):
    if data1 < data2:
        return data1
    else:
        return data2

data1 = int(input("Enter the first number: "))
data2 = int(input("Enter the second number: "))

result = minimum(data1, data2)
print(f"The Minimum number is: {result}")

