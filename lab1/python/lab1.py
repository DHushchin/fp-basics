# Створити функцію Singleton, яка приймає на вхід один аргумент 
# і повертає список із одного елемента (аргумента функції).
print("\nTask 1:")
Singleton = lambda x: [x]
print(f'1 -> {Singleton(1)}')


# Створити функцію null, яка приймає на вхід список і 
# повертає boolean з результатом перевірки чи пустий список.
print("\nTask 2:")
null = lambda x: not bool(x)
print(f'[1, 2, 3] -> {null([1, 2, 3])}')
print(f'[] -> {null([])}')


# Створити функцію snoc, яка приймає на вхід список і елемент, 
# і повертає новий список із елементом, який доданий в кінець списку.
print("\nTask 3:")
snoc = lambda x, y: x + Singleton(y)
print(f'[1, 2, 3], 4 -> {snoc([1, 2, 3], 4)}')
print(f'[], 5 -> {snoc([], 5)}')


# Створити функцію length, яка приймає на вхід список 
# і повертає кількість елементів в списку.
print("\nTask 4:")
length = lambda x: sum(map(lambda x: not null(x), x))
print(f'[1, 2, 3] -> {length([1, 2, 3])}')
print(f'[] -> {length([])}')