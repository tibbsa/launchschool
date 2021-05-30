# RB101-109 Small Problems
# Easy 1, Question 6 - Stringy Strings
# https://launchschool.com/exercises/f37a9e56
#
# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(num)
  s = ''
  num.times { |n| s << ((n+1).odd? ? '1' : '0') }
  s
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

## further exploration
# Modify stringy so it takes an additional optional argument that 
# defaults to 1. If the method is called with this argument set to 0, 
# the method should return a String of alternating 0s and 1s, but 
# starting with 0 instead of 1
def stringy_further(num, startval = 1)
  s = ''
  oddchar = (startval == 1) ? '0' : '1'
  evenchar = (startval == 1) ? '1' : '0'
  num.times do |index|
    s << (index.even? ? evenchar : oddchar)
  end

  s
end

puts stringy_further(6, 0) == '010101'
puts stringy_further(9, 0) == '010101010'
puts stringy_further(4, 0) == '0101'
puts stringy_further(7, 0) == '0101010'
