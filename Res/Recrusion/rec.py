import sys
sys.setrecursionlimit(120000)  # Increase the recursion limit to 2000


def countdown(i):
    print(i)
    if i <= 0:
        return
    else:
        countdown(i - 1)
    
i = 10000
countdown(i)