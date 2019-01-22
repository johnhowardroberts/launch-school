# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# we want to create a hash with key: letter, value: frequency
# need to iterate over the string's index positions
# for each letter, check against the existing hash
# for each unique letter, create a new key and increase value by 1
# for each non-unique letter, increase value of that key by 1

# pseudo code

# given string statement
# initiate an empty hash

# create a variable which is an array of all uppercase and lowercase letters in the alphabet
# iterate over alphabet variable to find the current letter
# String#count each letter in the string and add it to a new variable, letter_frequency
# create key in the hash and assign the value the count of each letter

# frequency_hash = {}
#
# alphabet = ['A'..'Z'].to_a + ['a'..'z'].to_a
#
# alphabet.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   frequency_hash[letter] = letter_frequency
# end
#
# p frequency_hash

# new effort
#
# statement.split(//)
