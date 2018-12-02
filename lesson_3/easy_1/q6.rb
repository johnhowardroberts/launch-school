# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

# method 1

puts "Four score and #{famous_words}" # this just prints it 

# method 2

puts famous_words.prepend("Four score and ")

# other methods

puts "Four score and " + famous_words

puts "Four score and " << famous_words
