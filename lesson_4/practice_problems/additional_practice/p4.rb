# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# first, is there an in-built method in Enumerable?
# Enumberable#min returns the object with the minimum value.

p ages.min

# => ["Eddie", 10]

# technically for this answer, you should call #values on the hash to focus directly on the values.

p ages.values.min

# => 10
