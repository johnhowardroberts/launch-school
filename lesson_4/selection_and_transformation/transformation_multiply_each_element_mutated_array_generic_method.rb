my_numbers = [1, 4, 3, 7, 2, 6]

def multiply!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * multiplier

    counter += 1
  end

  numbers
end


p multiply!(my_numbers, 3) # has mutated the array

p my_numbers # original array has been mutated
