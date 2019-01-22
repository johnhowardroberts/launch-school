# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# count looks at the block's truthiness, and returns the sum of all the truthy returns.
# It consider the truthiness of the block's return value
#

# => 1
