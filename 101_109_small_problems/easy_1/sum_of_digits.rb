# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits.

# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# PROBLEM
# you have one integer that we need to split into separate integers
# then we need to add them together and return the sum

# INPUT - integer
# OUTPUT - array, integer

# ALGORITHM
# take the argument passed through the method parameter
# use Integer#digits to separate thqe digits and return them in a new array
# use #inject to sum the digits together

def sum(integer)
  integer.digits.inject(:+)
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
