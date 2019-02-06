# One of the most frequently used real-world string properties is that of
# "string substitution", where we take a hard-coded string and modify it with
# various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# use each_pair here

# each_pair {| key, value | block } → hsh click to toggle source
# each_pair → an_enumerator
# Calls block once for each key in hsh, passing the key-value pair as parameters.
#
# If no block is given, an enumerator is returned instead.

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

# details represents the key value pair of the inner hash. Can reference the value
# via the key e.g. details['age']
