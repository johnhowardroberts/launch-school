arr = ['10', '11', '9', '7', '8']

# How would you order this array of number strings by descending numeric value?

# we need to transform the strings into integers for appropriate comparison
# we can then use the #sort comparator

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

# return value is => ["11", "10", "9", "8", "7"]

p arr # will return the original collection still => ["10", "11", "9", "7", "8"]
