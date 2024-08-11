def gcd(a, b):
    while b != 0:
        temp = b
        b = a % b
        a = temp
    return a

def lcm(a, b):
    return (a * b) // gcd(a, b)

def smallest_multiple(start, end):
    result = start
    for i in range(start + 1, end):
        result = lcm(result, i)
    return result 

from_start = int(input("Enter the start range: "))
form_end = int(input("Enter the end range: "))

final_result = smallest_multiple(from_start, form_end)
print(final_result)