def isPrime(number):
    if number <= 1:
        return False
    if number == 2:
        return True
    if number % 2 == 0:
        return False
    for i in range(3, int(number**0.5) + 1, 2):
        if number % i == 0:
            return False
    return True

def pos_Prime(pos):
    position = 0
    i = 2
    while position < pos:
        if isPrime(i):
            position += 1
            if position == pos:
                return i
        i += 1
    return -1

pos = int(input("Enter the position: "))
result = pos_Prime(pos)
print(result)
