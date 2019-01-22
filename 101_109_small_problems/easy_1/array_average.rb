# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be empty
# and the numbers will always be positive integers.
#
# Examples:
#
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# PEDAC
#
# PROBLEM
# Take each indexed position of an array, add them all up, then divide by the
# # size of the array
#
# EDGE CASES
# What about decimal places? Should we return an integer or a float? Examples actually return a float when you check on a calculator
#
# INPUT - Array
# OUPUT - Integer
#
# ALGORITHM
#
# - iterate through the array using an |index| parameter
# - create a new variable, sum, and set to 0
# - for each iteration, add the value of index to counter
# - after iteration complete, divide counter by array size

#MUCH SIMPLER ALGORITHM
# - use Array#sum to add the array elements together


#
# CODE

def average(array)
  array.inject(:+) / array.size
end

puts average([1, 5, 87, 45, 8, 8])
