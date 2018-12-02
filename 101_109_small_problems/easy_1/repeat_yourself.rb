def repeat(string, number)
  loop do
    if number.is_a?(Integer) && number > 0
      break
    else
      puts "Error. Enter a number larger than zero."
      number = gets.chomp.to_i
    end
  end
  
  number.times do
    puts string.to_s
  end
end

repeat('Hello', 3)
repeat('John', 5)
repeat('Hugh', 0)
repeat('Candice', -4)
repeat(5, 6)
repeat('John', 'John')
