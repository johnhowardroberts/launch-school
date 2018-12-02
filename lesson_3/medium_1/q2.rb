# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# error is "no implicit conversion of Integer into String"

# Method 1 if you want to extract the sum into a method

def sum
 formula = 40 + 2
end

puts "the value of 40 + 2 is #{sum}"

# method 2

puts "the value of 40 + 2 is #{40 + 2}"

# method 3

puts "the value of 40 + 2 is " + ((40 + 2).to_s)
