# equation solver using Newton's method
from math import exp

def f(x):
    return 5 * (1 - exp(-x)) - x
def Df(x):
    return 5 * exp(-x) - 1

guess = 10.
tolerance = 10.e-5
error = 1.
while (error > tolerance):
    value = guess - f(guess)/Df(guess)
    error = abs(guess - value)
    guess = value
print(value)