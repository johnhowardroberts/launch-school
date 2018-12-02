# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

# I tried the below approach, as I thought #to_a could be used to turn the hash
# into a nested array (correct), and then #select could be used to select the
# array position where x = "Barney", but this didn't work, it just returned
# the whole nested array again

p flintstones.to_a.select { |x| x = "Barney" }

# actual solution was to use #assoc, which searches through a nested array
# and looks for a match with the argument passed through e.g. "Barney". It
# returns the first associated array.

p flintstones.assoc("Barney")
