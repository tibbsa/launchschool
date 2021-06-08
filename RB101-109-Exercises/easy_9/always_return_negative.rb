# RB101-109 Small Problems
# Easy Problems 9, Question 3 - Always Return Negative
# https://launchschool.com/exercises/311da364
#
# Write a method that takes a number as an argument. If the argument 
# is a positive number, return the negative of that number. If 
# the number is 0 or negative, return the original number.

def negative(num)
  num > 0 ? -num : num # or -num.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby