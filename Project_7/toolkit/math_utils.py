import math


def factorial(n):
    """Calculate factorial."""

    return math.factorial(n)


def compound_interest(p, r, t):
    """Calculate compound interest."""

    amount = p * (1 + r / 100) ** t
    return amount


def circle_area(r):
    """Calculate area of circle."""

    return math.pi * r * r


def square_area(side):
    """Calculate area of square."""

    return side * side