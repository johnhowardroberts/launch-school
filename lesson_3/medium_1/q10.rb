# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo)

# The answer would be "no".

# 'foo' method returns the last line of code executed in the block "yes"
# This is then passed as the argument for the 'bar' method.
# "Yes" is then compared with "No" in the ternary operator. This doesn't match,
# so returns the 'false' part of the operator, which is "no".
