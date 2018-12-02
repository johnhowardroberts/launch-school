# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

p ages.has_key?("Spot")

# Bonus: What are two other hash methods that would work just as well for this solution?

p ages.include?("Spot")
p ages.member?("Spot")

# Note that include? and member? do not test member equality
# using == as do other Enumerables.

# this one also works

p ages.key?("Spot")
