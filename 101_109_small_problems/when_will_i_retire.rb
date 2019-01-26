# When will I Retire?
# Build a program that displays when the user will retire and how many years she has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Understand the PROBLEM
#
# We need to take the user's age and the age they would like to retire
# We need to find the difference between the two, and add it to the year given in the output
#
# QUESTIONS
#
# Is the year the current year, or fixed?
# How do we handle part years? Can the user enter months? Do decimal points count?
#
# EDGE CASES
#
#
# INPUT - integer
# OUTPUT - integer
#
#
# CODE

def prompt(string)
  puts "==> #{string}"
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "What age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_go = retirement_age - age

prompt "It's the year #{current_year}. You will retire in the year #{current_year + years_to_go}"
prompt "You only have #{years_to_go} years of work to go!"
