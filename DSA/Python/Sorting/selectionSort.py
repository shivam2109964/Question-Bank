A = [64,25,12,22,11]

for i in range(len(A) - 1):
    min_idx = 1
    for j in range(i + 1, len(A)):
        if A[min_idx] > A[j]:
            min_idx = j
    A[i], A[min_idx] = A[min_idx], A[i]

print("Sorted Array")
for i in range(len(A)):
    print(A[i], end= " ")        
