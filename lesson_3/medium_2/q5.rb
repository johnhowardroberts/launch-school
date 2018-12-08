# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Ruby automatically evaluates methods, so the if statement in this case is unnecessary.

def color_valid_2(color)
  color == "blue" || color == "green"
end

p color_valid("blue") # true
p color_valid("red") # false
p color_valid_2("blue") # nil
p color_valid_2("red") # false
