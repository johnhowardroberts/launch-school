# in the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

flintstones.each_with_index do | name, index |
  if name.start_with?("Be")
    puts index
  end
end

# this is messy, and also will print ALL names beginning with "Be", which is not what the problem calls for

# could also use Array#index which explicitly returns the first object in the array that matches the conditions

p flintstones.index { |name| name[0, 2] == "Be" }
