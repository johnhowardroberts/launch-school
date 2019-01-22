# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# we want to destructively transform this existing array
# Array#map! will do this

flintstones.map! do |name|
  name[0, 3]
end

p flintstones
