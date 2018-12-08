numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# uniq method iterates over the array and returns the unique elements into a new array, the new
# numbers.uniq variable will point to a new object_id, therefore puts numbers will
# print out

# 1
# 2
# 2
# 3
