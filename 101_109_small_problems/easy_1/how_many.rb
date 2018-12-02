# Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  array.uniq.each do |element|
    puts "#{element} => #{array.count(element)}"
  end
end

# suggested way

# def count_occurrences(array)
#   occurrences = {}
#
#   array.each do |element|
#     occurrences[element] = array.count(element)
#   end
#
#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

count_occurrences(vehicles)
