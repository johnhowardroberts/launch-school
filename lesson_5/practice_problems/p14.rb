# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables. The sizes should
# be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The return value should look like this:
#
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


# new_arr = []
#
# hsh.each_value do |details|
#   if details[:type] == 'fruit'
#     new_arr << details[:colors]
#   elsif details[:type] == 'vegetable'
#     new_arr << details[:size]
#   end
# end
#
# p new_arr

# the above works but only to pass the values as they are, into a new array. We want to
# transform the items with the nested hash, so #map is a good option here

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

# remember, we can use Enumberable#map on a hash to return an array
# then use a conditional to only map the items that match i.e. value[:size]
