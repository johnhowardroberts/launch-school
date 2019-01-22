# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# #reject returns any evalations that are falsey, i.e. nil or false
# this is the opposite of #select

# so where # select would return an empty array (#puts would return 3x `nil`)
# reject will return => [1, 2, 3]
