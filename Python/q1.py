def check_multiple(first, second, fromNum, toNum):
    sum = 0
    for i in range(fromNum, toNum):
        if(i % 3 == 0 or i % 5 == 0):
            sum += i
    return sum

first = (int(input("Enter the first number: ")))
second = (int(input("Entee the second number: ")))

fromNum = int(input("Enter the range from: "))
toNum = int(input("Enter the range to: "))

result = check_multiple(first, second, fromNum, toNum)
print(result)