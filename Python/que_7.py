# Factorial of a number

def factorial(data):
    value = 1
    for i in range(data):
        value += value * i
    return value

data = int(input("Enter the number: "))

resutl = factorial(data)
print(resutl)