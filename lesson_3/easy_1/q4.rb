# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1).object_id

# delete_at deletes the element at the index postition specified in the
# argument of the method. So in this case, it will remove the number 2 from the
# array

puts numbers

numbers.delete(1).object_id

puts numbers

# #delete will remove any matching objects from the array, so in this case,
# it will delete the number 1, because they match. Note, if it was the number
# 1 and the string "1" this would not be a match

#both of these delete permanently despite not having ! on the end of them 
