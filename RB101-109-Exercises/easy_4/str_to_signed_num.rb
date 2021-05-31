# RB101-109 Small Problems
# Easy 4, Question 8 - Convert a string to a SIGNED number
# https://launchschool.com/exercises/ba434183
#
# In the previous exercise, you developed a method that converts 
# simple numeric strings to Integers. In this exercise, you're going
# to extend that method to work with signed numbers.
#
# Write a method that takes a String of digits, and returns the 
# appropriate number as an integer. The String may have a leading 
# + or - sign; if the first character is a +, your method should 
# return a positive number; if it is a -, your method should return 
# a negative number. If no sign is given, you should return a 
# positive number.
# 
# You may assume the string will always contain a valid number.
#
# You may not use any of the standard conversion methods available 
# in Ruby, such as String#to_i, Integer(), etc. You may, however, 
# use the string_to_integer method from the previous lesson.

def string_to_integer(str)
  place_idx = (str.length - 1)
  
  num = 0
  while place_idx >= 0
    digit = str[place_idx].ord - '0'.ord
    num = num + digit * (10 ** (str.length - 1 - place_idx))
    place_idx -= 1
  end

  num
end

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-1') == -1
p string_to_signed_integer('2') == 2


