# Let's do some "ASCII Art" (a stone-age form of nerd artwork from
# back in the days before computers had video screens).
#
# For this practice problem, write a one-line program that creates
# the following output 10 times, with the subsequent line
# indented 1 space to the right:
#
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# UTP

# Given a String, iterate through it ten times, print it, then add a space
# character to the beginning of the string each iteration. Repeat this until
# a counter reaches 10

def print_string(string)
  counter = 0
  loop do
    puts string
    string.prepend(' ')
    counter += 1
    break if counter == 10
  end
end

print_string('The Flintstones Rock!')

# refactored solution
