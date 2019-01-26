# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.
#
# Examples
#
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

Understand the Problem

- we are asking the user for a string input
- we need to look for if the string ends with !
- we will output 1 of 2 string options based on what the input string ends with
- if name does end with !, need to remove it before printing output

ALGORITHM

- ask for user's name
-- user inputs name as a string, store in variable, name
- use String#end_with? to check if user input ends with "!"
- if end_with? "!" use String#chop to remove last character of string
-- if end_with? "!"
--- print "HELLO [NAME]. WHY ARE WE SCREAMING?"
-- else
--- print "Hello [NAME]"

puts "What is your name?"
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
