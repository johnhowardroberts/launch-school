# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Array#each iterates over each index position as it sees the array.
# calling number will return the index position 0 for that iteration

# => 1

# calling numbers.shift(1) removes the first 1 element and returns it in a new array
# so p numbers.shift(1) would => [1]

# after the first iteration, this would leave the numbers array as [2,3,4]

# on the second iteration, calling number would return the second index position

# => 3

# and numbers.shift(1) will remove

# => 2, leaving the array as [3,4]

# so overall, the output would be

# => 1
# => 3

# Part 2

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.pop(1)
end

# #pop removes the last element of the array

# first iteration, returns number index position 0

# => 1

# removes the (1) last element from array into new array

# => [4], leaves [1,2,3]

# second iteration, returns number position 1

# => 2

# pop removes and returns [3], and no more elements to iterates

# final answer

# => 1
# => 2
