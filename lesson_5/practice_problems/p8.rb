# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# String#chars will convert each string into an array of characters ready to iterate through

hsh.each do |position, words|
  puts position.to_s

  letters = []
  words.each do |word|
    word.chars do |char|
      letters << char if char == "a"
      letters << char if char == "e"
      letters << char if char == "i"
      letters << char if char == "o"
      letters << char if char == "u"
    end
  end

  puts letters.join
end


# the above example presumed we wanted to output for each given key, and also joined the array into a string once iteration was complete

# another way would be to set a variable of vowels to reference a character against

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |string|
    string.chars do |char|
      puts char if vowels.include?(char)
    end
  end
end 
