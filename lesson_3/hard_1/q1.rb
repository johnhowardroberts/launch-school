# What do you expect to happen when the greeting variable is referenced
# in the last line of the code below?

if false
  greeting = “hello world”
end

p greeting # added p to see result in console

# this is going to return 'nil'

# this is because 'nil' is returned when there is an absence of any object
# no exception is thrown because the local variable is initialized inside the block
# will evaulate to nil even though the block didn't execute.

# if an uninitliaed block was referenced outside of the variable, an "undefined"
# exception would be thrown.
