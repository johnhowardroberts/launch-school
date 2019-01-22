# Let's now take a look at an example with hashes. In this example we want to select the key-value pairs where the value is 'Fruit'.
#
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# Let's now take a look at an example with hashes. In this example we want to select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce_list)
  food_keys = produce_list.keys
  counter = 0
  fruits = {} # create a new hash for the selected fruits k-v pairs

  loop do
    break if counter == food_keys.size # always need to break the loop once we've been through the keys

    current_key = food_keys[counter] # on each loop, we are extracting a SINGLE key based on index position
    current_value = produce_list[current_key] # we are then taking the value associated with that new variable - argument[new_key_variable]

    if current_value == 'Fruit'
      fruits[current_key] = current_value # Concentrate! This shows that IF the current_value is 'fruit', then in our new fruits hash, the current_key key (so e.g. 'apple') has a value of 'fruit'. If it is not 'fruit', then nothing happens, and we loop again with the counter moving the key onto the next index position.
    end

    counter += 1
  end

  fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
