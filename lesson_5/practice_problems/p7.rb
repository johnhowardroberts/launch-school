# Given this code, what would be the final values of a and b? Try to work
# this out without running the code.

a = 2
b = [5, 8]
arr = [a, b] # => arr = [2, [5, 8]]

arr[0] += 2 # => arr = [4, [5, 8]], but a = 2 still because we are not referencing a at any point. This code arr[0] += 2 was modifying the array, arr not a. In effect we are assigning a new object at that index of the array so that instead of arr[0] containing a it now contains 4
arr[1][0] -= a # this is the inner array, first index position, 5.
# arr[0] added to the value of the object a is pointing to. So, minus a is
# like saying minus 2. 5-2 = 3

# => [4, [3, 8]]

# The value of b did change because b is an array and we are modifying that array by assigning a new value at index 0 of that array.
