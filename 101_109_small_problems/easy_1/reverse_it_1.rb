# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# The tests above should print true.

# PEDAC

# P - understand the Problem

# we are given a string of characters, that need to be delimited into 'words' by
# using a space character as the delimiter
# we pass the string in as an argument to a method, called reverse_sentence
# method should iterate through the string and delimit it using String#split
# method should pass the strings into a new variable, reversed_string array
# then we can Array#join the array into a new string using a space separator

# E - edge cases

# what should happen with a full stop?
# what happens with capital letters? - it looks like they are retained, and the new sentence does not need to start with a capital letter

# D - data structure

# input - String
# output - String

# A - algorithm

#method, 1 argument. #String.split, #Array.reverse, #Array.join

# C - code

reversed_string = ""

def reverse_sentence(sentence)
  reversed_string = sentence.split(' ').reverse.join(' ')
end

puts reverse_sentence("Hi there John.")
