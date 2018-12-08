# In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.
#
# To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.
#
# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# the variables are altered within the method, and are not available outside of the scope of it. The altered variables within the method are pointing at a new object_id. Therefore the values of the original variables when puts is called remain unchanged

puts "=======A======="

puts "one is: #{one}" # "one is: one"
puts "two is: #{two}" # "two is: two"
puts "three is: #{three}" # three is: three"

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# exactly the same situation as A

puts "=======B======="

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# the variables are mutated within the method, so the original objects are modified instead of just being for use within the method.

puts "=======C======="

puts "one is: #{one}" # one is: two
puts "two is: #{two}" # two is: three
puts "three is: #{three}" # three is: one
