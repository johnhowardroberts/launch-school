# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

# new variable required, total_male_ages
# iterate through the hash munsters, and #select those based on the key "gender"
# when #select returns true on "male", insert value for key "age" into total_male_ages

total_male_ages = 0

munsters.each_value do |details|
  if details["gender"] == "male"
    total_male_ages += details["age"]
  end
end

puts total_male_ages # => 444

# In this example, within each key-value pair in the outer hash the value is
# itself a hash. When iterating through the outer hash, we need to access
# two values from each inner hash.
#
# Since we're not referencing the key (each family member's name) from the
# key-value pairs in the outer hash, we can use Hash#each_value with a
# single block parameter.
