# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# we want to loop through, and reference the value of the k-v pair each time
# we want to add those values up
# add them to a new variable?

ages_added_up = 0

ages.each do | name, age |
  ages_added_up += age
end

p ages_added_up

# Another option would be to use a Enumerable#inject method.
#
# ages.values.inject(:+) # => 6174
# This uses ages.values to make an array, then uses the inject method which is part of the Enumerable module. The strange-looking parameter to inject is simply a variety of the inject method which says "apply the + operator to the accumulator and object parameters of inject".
#
# As we have previously discussed, Enumerable is included in Array, and it can be useful to augment your knowledge of what you can do with arrays by studying Enumerable. When faced with a problem such as this one however, don't get tempted to go 'method hunting' in order to reach a solution. As demonstrated, even if you don't know the #inject method, the problem can be solved equally well by using #each to iterate through the Hash; you could even use a basic loop to reach the same result.
