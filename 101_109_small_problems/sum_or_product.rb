# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
#
# Examples:
#
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Understand the Problem
#
# - We are asking the user for a single integer
# - The user will decide via user input whether they want the sum or product of all numbers from 1 to the inputted number
# - The terminal will print out the relevant calculation in an output string
#
# QUESTIONS
#
# - How do we handle user input that isn't 's' or 'p'? >> ask user to input again
# - How do we handle 'sum' or 'product'? >> handle like above
# - How do we handle uppercase 'S' or 'P'? >> convert to lowercase before processing
# - How do we handle floats? >> add in check for integer
# - How do we handle the consecutive integers? >> Array#inject
#
# DATA STRUCTURE
#
# - INPUT - integer, string
# - HANDLING NUMBERS - Array#inject
# - OUTPUT - integer
#
# ALGORITHM
#
# - ask user for an integer, store it in variable 'integer'
# -- LOOP: if input != integer, ask for input again
# -- take 'integer' and create a new array, 'consecutive_numbers', using (1..integer.to_i).to_a
# - ask user for sum or product, a string, store it in variable 'operator'
# -- downcase the input
# -- LOOP: if input != 's' or 'p', ask for input again
# - if operator == 's', perform
# -- array.inject(:+)
# - elsif operator == 'p', perform
# -- array.inject(:*)
# - print out result of caluclation
#
# CODE

def integer?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

def sum_of_integers(num)
  (1..num.to_i).inject(:+)
end

def product_of_integers(num)
  (1..num.to_i).inject(:*)
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp

loop do
  if integer?(integer)
    break
  else
    puts "Error. Please enter an integer greater than 0:"
    integer = gets.chomp
  end
end

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp.downcase

loop do
  if operator == 's' || operator == 'p'
    break
  else
    puts "Error. Please enter 's' for sum or 'p' for product:"
    operator = gets.chomp.downcase
  end
end

if operator == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum_of_integers(integer)}"
else
  puts "The product of the integers between 1 and #{integer} is #{product_of_integers(integer)}"
end
