# RB101-109 Small Problems
# Easy 1, Question 3 - List of Digits
# https://launchschool.com/exercises/30e147eb
#
# Write a method that takes one argument, a positive integer, and 
# returns a list of the digits in the number.

# LS solution 1: 
#   number.to_s.chars.map(&:to_i)
#
# LS solution 2: 
#   digits = []
#   loop do
#      number, remainder = number.divmod(10)
#      digits.unshift(remainder)
#      break if number == 0
#   end
#   digits
#
# LS student solutions:
#   digit.digits.reverse
#

# My solution:
def digit_list(num)
  arr = []
  divisor = 10**((num.to_s.length) - 1)
  
  while divisor >= 1
    digit = num/divisor
    arr << (num / divisor)
    num -= digit*divisor

    divisor = divisor / 10
  end
  
  arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true