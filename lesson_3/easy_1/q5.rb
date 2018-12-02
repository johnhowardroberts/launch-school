# Programmatically determine if 42 lies between 10 and 100.

num = 42

(10..100).include?(num)

# solution suggests using Range#cover?

(10..100).cover?(42)

# #include? is slightly more complex than #cover? and, is less efficient but
# may be relevant for certain use cases https://stackoverflow.com/questions/21608935/what-is-the-difference-between-rangeinclude-and-rangecover 
