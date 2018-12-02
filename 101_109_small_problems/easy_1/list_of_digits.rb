def digit_list(number)
  loop do
    if number.is_a?(Integer) && number >= 0
      break
    else
      puts "Error. Enter a positive number."
      number = gets.chomp.to_i
    end
  end

  number.to_s.chars.map { |x| x.to_i }
end

puts digit_list(-12345)
puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)
