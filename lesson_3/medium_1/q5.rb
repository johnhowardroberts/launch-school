# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator,
# A user passes in two numbers, and the calculator will keep computing the
# sequence until some limit is reached.
#
# Ben coded up this implementation but complained that as soon as he ran it,
# he got an error. Something about the limit variable. What's wrong with the code?

# limit = 15
#
# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end
#
# result = fib(0, 1)
# puts "result is #{result}"

# error: undefined local variable or method `limit' for main:Object (NameError)

# limit is not defined as a variable in the method parameter or inside the
# method. Method does not have access to variables outside of its scope.

# Can either define the limit variable within the method,
# or pass in limit as a parameter of the method.

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 100)
puts "result is #{result}"

def fib2(first_num, second_num)
  limit = 100
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib2(0, 1)
puts "result is #{result}"
