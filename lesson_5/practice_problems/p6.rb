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

# ...like this:
#
# (Name) is a (age)-year-old (male or female).

# first attempt

munsters.each do |name, details|
  details.each do |age, gender|
    puts "#{name} is a #{age} year old #{gender}"
  end
end

# but this prints out
#
# Herman is a age year old 32
# Herman is a gender year old male
# Lily is a age year old 30
# Lily is a gender year old female
# Grandpa is a age year old 402
# Grandpa is a gender year old male
# Eddie is a age year old 10
# Eddie is a gender year old male
# Marilyn is a age year old 23
# Marilyn is a gender year old female

# use each_pair here

# each_pair {| key, value | block } → hsh click to toggle source
# each_pair → an_enumerator
# Calls block once for each key in hsh, passing the key-value pair as parameters.
#
# If no block is given, an enumerator is returned instead.

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end
