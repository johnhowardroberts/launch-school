# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Check the Ruby docs

# #shift destructively removes the first key-value pair in hash and returns it as a two-item array.

# hash.shift => [:a, "ant"]
# hash = { b: 'bear' }
