# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true,
# the bonus should be half of the salary. If the boolean is false, the bonus
# should be 0.
#
# Examples:
#
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# INPUT - integer, boolean
# OUTPUT - integer

# EDGE CASES
# What if an integer isn't provided? What kind of error do we throw?
# What if a bollean value isn't provided? What kind of error do we throw?

# ALGORITHM
# if statement to look for return value of second parameter
# - if true, return first paramater / 2
# - else, return zero

# CODE

def calculate_bonus(salary, is_bonus)
  if is_bonus == true
    bonus = salary / 2
  else
    bonus = 0
  end
end

def calculate_bonus_refactored(salary, is_bonus)
  is_bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)

puts calculate_bonus_refactored(2800, true)
puts calculate_bonus_refactored(1000, false)
puts calculate_bonus_refactored(50000, true)
