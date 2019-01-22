# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

# need to loop through the hash's k-v pairs, and reference the values
# if the value is > 100, remove the k-v pair from the hash
# is there a destructive method we can use?

# Hash#delete_if deletes a k-v pair from a hash when the block evaluates to true

ages.delete_if { |name, age| age > 99 }

p ages

# Other options
#
# ages.keep_if { |_, age| age < 100 }
# You could also use #select! here. When using similar methods however, it is important to be aware of the subtle differences in their implementation. For example, the Ruby Documentation for Hash#select! tells us that it is "Equivalent to Hash#keep_if, but returns nil if no changes were made", though in this case that wouldn't have made any difference.
