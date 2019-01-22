# We'll wrap up this assignment with one more example from earlier. Recall our initial selection example of selecting the letter 'g' out of the alphabet. Let's write a method called select_letter, that takes a string and returns a new string containing only the letter that we specified. We want it to behave like this:
#
# question = 'How many times does a particular character appear in this sentence?'

# select_letter(question, 'a') # => "aaaaaaaa"
# select_letter(question, 't') # => "ttttt"
# select_letter(question, 'z') # => ""

# We'll wrap up this assignment with one more example from earlier. Recall our initial selection example of selecting the letter 'g' out of the alphabet. Let's write a method called select_letter, that takes a string and returns a new string containing only the letter that we specified. We want it to behave like this:

# PROBLEM:
#   Given a string
#   Need to check each element of a string and match it against an argument, a single character.
#   Need to return each match into a new string
#
# INPUT:
#   string
#
# OUTPUT:
#   string
#
# RULES:
#   Explicit requirements:
#
#   Implicit requirements:
#
#
# QUESTIONS:
#
#
# DATA STRUCTURE:
#
#
# ALGORITHM:



def select_letter(string, char)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == string.size

    current_char = string[counter]

    if current_char == char
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

# because we are returning a string, we can chain a method onto it, so for instance we could find out the number of instances of the character:

p select_letter(question, 'a').size # => 8
p select_letter(question, 't').size # => 5
p select_letter(question, 'z').size # => 0
