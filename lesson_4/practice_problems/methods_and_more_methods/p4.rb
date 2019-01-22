# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# value represents the current element in the array we are acting on
# hash represents the hash passed in as the method argument ({})
# hash[value] would simply return the each value back into the hash,
# but value[0] is looking at the index position of the string of `value`
# so it will return the first letter of the string into the hash as the key

# => { "a" => "ant", "b" => "bear", "c" => "cat" }
