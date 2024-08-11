
def primeFactor(n):
    factor = 2
    while n > 1:
        if n % factor == 0:
            n //= factor
        else:
            factor += 1
    return factor

number = int(input("Enter the number: "))

result = primeFactor(number)
print(result)