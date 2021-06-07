# RB101-109 Small Problems
# Easy 6, Question 9 - Does My List Include This?
# https://launchschool.com/exercises/860cfef1
#
# Write a method named include? that takes an Array and a 
# search value as arguments. This method should return true if 
# the search value is in the array, false if it is not. You may 
# not use the Array#include? method in your solution.

def include? (array, search)
  array.each { |item| return true if search == item }
  return false
end

## the "easy" way: !!array.find_index(value)

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
