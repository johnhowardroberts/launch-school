# my first effort

def is_odd?(num)
  if num % 2 != 0
    return true
  else
    return false
  end
end

# refactored as the method will return true or false without explicit return statement

def is_odd_refactored?(num)
  num % 2 == 1
end

# further exploration

def is_odd_remainder?(num)
  num.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
puts '===='
puts is_odd_refactored?(2)    # => false
puts is_odd_refactored?(5)    # => true
puts is_odd_refactored?(-17)  # => true
puts is_odd_refactored?(-8)   # => false
puts is_odd_refactored?(0)    # => false
puts is_odd_refactored?(7)    # => true
puts '===='
puts is_odd_remainder?(2)    # => false
puts is_odd_remainder?(5)    # => true
puts is_odd_remainder?(-17)  # => true
puts is_odd_remainder?(-8)   # => false
puts is_odd_remainder?(0)    # => false
puts is_odd_remainder?(7)    # => true
