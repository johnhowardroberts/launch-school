# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# EDGE CASES
#
# not asked to validate input
# the output is a float, so should the input be allowed to be a float too? Assumed YES
# assumed that negative numbers can't be used as that doesn't exist
# do we need to store the answer in a variable? assumed YES
# how many decimal places should we restrict to? conventional wisdom == 2
#
# INPUT - float
# OUTPUT - float
#
# ALGORITHM
# - ask for length of room. requires user input, store in var
# - ask for width of room. requires user input, store in var
# - multiply the vars and store in a new var for future use
# - print ouput sentence including new var as well as a conversion to square feet
#
# CODE

SQ_METERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters"
length = gets.chomp.to_f

puts "Enter the width of the room in meters"
width = gets.chomp.to_f

square_meters = length * width

puts "The area of the room is #{square_meters.round(2)} sq. m (#{(square_meters * SQ_METERS_TO_FEET).round(2)} sq. ft)"

puts "Thank you, goodbye!"
