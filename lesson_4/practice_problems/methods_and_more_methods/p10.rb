# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# returns a new array
# block prints number, and returns the last evaluated line of the block
# puts always returns nil

# 2
# 3
# => [1, nil, nil]
