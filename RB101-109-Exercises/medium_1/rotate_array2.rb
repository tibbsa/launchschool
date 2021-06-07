# RB101-109 Small Problems
# Medium 1, Question 1 - Rotation (Part 2)
# https://launchschool.com/exercises/11e2bbdc
#
# Write a method that can rotate the last n digits of a number. For example:
#

def rotate_array(arr)
  arr_copy = arr.dup
  arr_copy << arr_copy.shift
end

def rotate_rightmost_digits(num, rotate_digits)
  numbers = num.to_s.chars
  numbers[-rotate_digits, rotate_digits] = 
    rotate_array(numbers[-rotate_digits, rotate_digits])
  ## ls solution would be: numbers[-rotate_digits..-1]
  numbers.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
