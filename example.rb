def is_an_ip_number?(input_string)
  separated_words = input_string.split(".")

  # p separated_words

  if separated_words.any? { |x| ("a".."z").cover?(x) || ("A".."Z").cover?(x) }
    return false

  integer_array = separated_words.map { |x| x.to_i }

  elsif

  else
    return true
  end

  #
  # p integer_array



#   separated_words.each do |x|
#     if (0..255).include?(x.to_i)
#       return true
#     else
#       return false
#     end
#   end
end

p is_an_ip_number?('x.165.1.john')
p is_an_ip_number?('200.165.1.John')
p is_an_ip_number?('200.165.1.200')
p is_an_ip_number?('200.165.1.300')
