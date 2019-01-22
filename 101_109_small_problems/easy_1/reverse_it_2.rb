# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces. Spaces should be included
# only when more than one word is present.
#
# Examples:
#
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# PEDAC

# Problem
# At its core, we can use #String#reverse to reverse the whole string.
# However in this case we need to identify words with 5 or more chars.
# We also do not want to reverse the order of the words, just particular words within.
# To do this we'll need to pass a string into a method and:
#   1. #Split the string into an Array
#   2. Iterate through the array with #each and count the #length of each string
#   3. For each substring above 4 chars, #reverse! the string
#   4. add each iterated string into a new array, treated_words
#   5. #join the treated_words array back into a string
#   5. print it out


def reverse_words(string)
  treated_words = []
  string.split.each do | current_word |
    current_word.reverse! if current_word.length >= 5
    treated_words << current_word
  end

  treated_words.join(' ')
end

puts reverse_words("Hello my name is John Roberts")
puts reverse_words("The quick brown fox did a little poo on the grass")
