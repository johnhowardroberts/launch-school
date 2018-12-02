# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.append("Dino")

# note, this is an alias for #push

p flintstones

# given solution suggest using #<< - This expression returns the array itself,
# so several appends may be chained together e.g.
# flintstones << "Dino" << "Fido"
