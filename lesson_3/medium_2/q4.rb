# To drive that last one home...let's turn the tables and have the string
# show a modified output, while the array thwarts the method's efforts to
# modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']

  puts "In the method==========="
  puts "a_string_param object_id is #{a_string_param.object_id}"
  puts "an_array_param object_id is #{an_array_param.object_id}"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "After the method call==========="
puts "my_string object_id is #{my_string.object_id}"
puts "my_array object_id is #{my_array.object_id}"

puts "My string looks like this now: #{my_string}"
# pumpkinrutabaga
puts "My array looks like this now: #{my_array}"
# ["pumpkins"]

# exploration

# for the string, << modifies the existing object. So we've passed the object_id by reference into the method through my_string,
# and a_string_param points to the same object_id after it has been mutated. So therefore, my_string will be "pumpkinrutabaga" conctatenated.
#
# for the array, we are assigning the literal ['pumpkins', 'rutabaga'] to a new local variable, that has a new object_id,
# therefore you can see that inside the method, it has a new object_id to my_array, which was originally passed into the method.

# official explanation

# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins"]
# As you can see, we have achieved the opposite effect from our last example.
#
# We are still passing in the same two string and array parameters, but the results are the opposite, because our method does the "same thing" to each, but in a different way than before. That is, in both cases, the method attempts to change the string from "pumpkins" to "pumpkinsrutabaga" and add "rutabaga" to the array.
#
# Despite the similarity of the results inside the method definition, the results outside the method definition are the opposite.
#
# As before, the explanation is all about what Ruby does with local variables when we change the object it points to. Does it create a new local variable? Or is it able to just modify the existing object?
#
# With the Array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a new object, and we are assigning it to the local variable an_array_param.
