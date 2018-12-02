# In the previous practice problem we added Dino to our array like this:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino" << "Hoppy"

p flintstones

# we could also use #concat or #push

flintstones.concat( ["Dino", "Hoppy"] )

p flintstones

flintstones.push("Dino", "Hoppy")

p flintstones

# also suggested

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain

# or

flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

p flintstones # => ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy", "Dino", "Hoppy", "Dino", "Hoppy", "Dino", "Hoppy", "Dino", "Hoppy"]
