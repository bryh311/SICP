# while I am learning scheme I will use python to test things


def proc(a, b, c):
    def add_square(a, b):
        return a * a + b * b
    if a > b:
        if b > c:
            return add_square(a , b)
        else:
            return add_square(a, c)
    else:
        if a > c:
            return add_square(a, b)
        else:
            return add_square(b, c)

print(proc(15, 15, 10))
print(proc(15, 10, 15))
print(proc(10, 15, 15))