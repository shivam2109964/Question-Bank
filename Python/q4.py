def isPalinedrom(product):
    string = str(product)
    rev = string[::-1]
    return string == rev

def palinedrom(digit):
    min = 0
    max = 0
    palinedromNum = 0
    if digit == 2:
        min = 10
        max = 99
    else:
        min = 100
        max = 999
    for i in range(min, max + 1):
        for j in range(i, max + 1):
            product = i * j 
            if isPalinedrom(product) and  product > palinedromNum:
                palinedromNum = product
    return palinedromNum

digit = int(input("Enter the digit either 2 or 3: "))

if digit == 2 or digit == 3:
    result = palinedrom(digit)
    print(result)
else:
    print("Please Enter the valid no either 2 or 3: ")