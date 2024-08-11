def fibonaaci(n):
    start = 0
    sec = 1
    sum = 0
    while sec < n:
        temp = start 
        start = sec
        sec = temp + start
        if(sec % 2 == 0):
            sum += sec
    return sum
size = int(input("Enter the size of the fibonacci: "))

result = fibonaaci(n=size)
print(result)