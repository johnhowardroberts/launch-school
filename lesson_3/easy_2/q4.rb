# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include? "Dino"

# which returns false

# or if you wanted to make a method that outputs the result

def includes_string?(string)
  word = "Dino"

  if string.include?(word)
    puts "Sentence does include #{word}! :)"
  else
    puts "Sentence does not include #{word}! :("
  end
end

includes_string?(advice)

# suggested solution uses #match, which is useful for more complex requests
# such as regex, or searching from a particlar point
# also returns nil rather than false 

p advice.match("Dino")
