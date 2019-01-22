# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# PEDAC

# Edge cases have all been taken care of in the brief

# Input - integer
# output - string

# Algorithm
# A method is passed one parameter, an integer
# We need to take that number, and iterate through a loop that many times
# Create an empty string variable called ones_and_zeroes
# For each iteration, check whether the count number is odd or even
# - if odd, append a '1' to the string
# - if even, add a '0' to the string
#



def stringy(integer)
  ones_and_zeroes = []

  integer.times do |index|
    number = index.even? ? 1 : 0
    ones_and_zeroes << number
  end

  ones_and_zeroes.join
end

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
