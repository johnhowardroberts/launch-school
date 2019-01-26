# Given the munsters hash below
#
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# Modify the hash such that each member of the Munster family has an
# additional "age_group" key that has one of three values describing the age
# group the family member is in (kid, adult, or senior). Your solution should
# produce the hash below

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

# Understand the problem
#
# Given a hash, we need to add a new k-v pair to each
# The key is set "age_group"
# the value is conditional depending on the integer value of the k-v pair
# in the first index position of the hash
#
# PSEUDO
#
# - Iterate over the hash with #each
# - Create a conditional case for "age"
# -
#
# INPUT - hash
# OUTPUT - updated hash
#
# CODE

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  case info["age"]
  when (0..17)
    info["age_group"] = "kid"
  when (18..64)
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end

p munsters
