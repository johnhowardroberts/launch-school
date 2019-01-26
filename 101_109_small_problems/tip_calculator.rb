# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.
#
# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

# INPUT
# Bill - float, rounded to 2
# Tip - float, rounded to 2
#
# OUTPUT
# Tip calculation - float, rounded to 2 again
# Bill calculation - float, rounded to 2 again
#
# ALGORITHM
# - #gets the bill amount from user, save in variable
# - #gets the tip amount from user, save in variable
# - calculate the tip total and save in a new variable
# - # print out the calculated tip and the bill + tip total in an output string

puts "What is the bill?"
bill = gets.chomp.to_f.round(2)
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f.round(2)

tip_total = ((tip_percent / 100) * bill).round(2)

puts "The tip is $#{format("%.2f", tip_total)}"
puts "The total is $#{format("%.2f", (bill + tip_total).round(2))}"

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always prints the results with 2 decimal places.
#
# Hint: You will likely need Kernel#format for this.

# #Kernel#format

# uses the syntax: %[flags][width][.precision]type

# %   | A percent sign itself will be displayed.  No argument taken.
#
#   f   | Convert floating point argument as [-]ddd.dddddd,
#       | where the precision specifies the number of digits after
#       | the decimal point.
