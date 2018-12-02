# Describe the difference between ! and ? in Ruby. And explain what would
# happen in the following scenarios:
#
# what is != and where should you use it? >>> != means not equal and you should use it in a conditional statement
# put ! before something, like !user_name >>> this is the Logical NOT Operator. It is used to reverse the state of its operand. e.g. if a condition is true, it will make it false. !user_name could be used to reverse validate?
# put ! after something, like words.uniq! >>> this usually means a mutating method, althogh it is only convention and not a guarantee
# put ? before something >>> is a ternary operator. This evaluates if an expression is true or false, and then executes one of two statements depending on the result, true or false e.g. if condition is true ? then statement X : otherwise statement Y
# put ? after something >>> this usually means a method has a true/false value returned from it and nothing else.
# put !! before something, like !!user_name - used to turn any object into its boolean equivalent e.g. !!numbers.object_id ==> true


# ! is a character used to denote either a mutating method, OR is used as an
# operand to mean "does not"
