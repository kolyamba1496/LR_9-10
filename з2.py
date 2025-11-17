import random
N = 8
def random_matrix(matrix):
    for i in range(N):
        for j in range(N):
            matrix[i][j] = random.randint(0, 6)

def print_matrix(a):
    print()
    for i in range(N):
        for j in range(N):
            print(f'{a[i][j]:5}', end='')
        print()

def para7(row):
    for j in range(N - 1):
        if row[j] + row[j + 1] == 7:
            return True
    return False

def res(b, r):
    temp = [0] * N
    for i in range(N):
        for j in range(N):
            temp[j] = b[i][j]

        if para7(temp):
            r[i] = 1
        else:
            r[i] = -1

def resultat(res_arr):
    print('результат')
    for i in range(N):
        print(f'{res_arr[i]:5}', end='')
    print()

matrix = [[0] * N for _ in range(N)]
random_matrix(matrix)
print_matrix(matrix)
matrix2 = [0] * N
res(matrix, matrix2)
resultat(matrix2)