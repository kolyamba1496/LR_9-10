def f1(x):
    result = 1
    for j in range(len(x)):
        result *= x[j]
    return result

def f2(x):
    result = 1
    for j in range(len(x)):
        if x[j] % 2 == 0:
            result *= x[j]
    return result

n = int(input('Введите размер массива: '))
a = [0] * n

print('Введите элементы массива:')
for i in range(n):
    a[i] = int(input())

print('Ваш массив:')
for i in range(n):
    print(a[i], end=' ')
print()

print('Произведение всех элементов:', f1(a))
print('Произведение четных элементов:', f2(a))