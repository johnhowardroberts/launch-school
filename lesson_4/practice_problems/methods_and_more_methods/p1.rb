# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# select evaluates the return value of a block
# block returns a value on each iteration, in this case [1, 2, 3]
# evaluates the last expression in the block, which is 'hi' - num > 5 is ignored
# returns a new collection
# 1 > 5 => false
# 2 > 5 => false
# 3 > 5 => false
# but is ignored

# 'hi' => true x3

# => [1, 2, 3]


# launch school explanation

# select performs selection based on the truthiness of the block's return value.
# In this case the return value will always be 'hi', which is a "truthy" value.
# Therefore select will return a new array containing all of the elements in the original array.
