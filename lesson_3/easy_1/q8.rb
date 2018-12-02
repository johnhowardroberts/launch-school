#If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

# use Array#flatten! to permanently flatten the array. This requires only 1
# level of flattening, so no argument needed, but if there was more than 1
# nested array, you would need to determine how many levels you want to flatten
# by and add an argument to the method e.g. flinstones.flatten!(1)

flintstones.flatten!

p flintstones
