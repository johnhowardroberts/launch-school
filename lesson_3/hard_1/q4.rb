def is_an_ip_number?(input_string)
  separated_words = input_string.split(".")

  separated_words.each do |x|
    if (0..255).include?(x.to_i)
      return true
    else
      return false
    end
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    # p dot_separated_words >>> used to check on the while loop popping the array
    return false unless is_an_ip_number?(word)
  end
  return true # this can be shortened to just 'true', as Ruby returns the result of the last evalated expression.
end

p is_an_ip_number?('john.222.222.john')
p dot_separated_ip_address?('john.222.222.222')
