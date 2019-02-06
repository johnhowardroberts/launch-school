[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end

# item.to_s.to_i == item is the check

# this code maps the array to a new array for selection based on criteria.
# one of the criteria is if integer > 6, so we use item.to_s.to_i == item to
# validate that it is an integer (and not e.g. a float or string)
