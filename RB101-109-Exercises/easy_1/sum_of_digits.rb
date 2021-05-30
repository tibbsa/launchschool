# RB101-109 Small Problems
# Easy 1, Question 8 - Sum of Digits
# https://launchschool.com/exercises/0049ac13
#
# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.
#
# For a challenge, try writing this without any basic looping constructs 
# (while, until, loop, and each).

#
# LS solution:
#   number.to_s.chars.map(&:to_i).reduce(:+)
#
# Explanation:
# 23.to_s        # => "23"
#   .chars       # => ["2", "3"]
#   .map(&:to_i) # => [2, 3]
#   .reduce(:+)  # => 5

def sum(num)
  # see https://ruby-doc.org/core-2.4.0/Integer.html#method-i-digits
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45