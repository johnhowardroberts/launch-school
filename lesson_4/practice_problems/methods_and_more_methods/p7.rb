# What is the block's return value in the following code? How is it
# determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# this block will return and print each number on a separate line, and the #any? method
# return the truthiness of block.

# 1
# 2
# 3

# => true
