def square_of_sum(start, end):
    sum = 0
    for i in range(start, end + 1):
        sum += i
    return sum * sum

def sum_of_square(start, end):
    sum = 0
    for i in range(start, end + 1):
        sum += i * i
    return sum

start_range = int(input("Enter the starting range: "))
end_range = int(input("Enter the ending range: "))

sos2 = square_of_sum(start_range, end_range)
sos1 = sum_of_square(start_range, end_range)

final_result = sos2 - sos1

print("Final result", final_result)
