# RB101-109 Small Problems
# Easy 7, Question 8 - Multiply Lists
# https://launchschool.com/exercises/4a28f116
#
# Write a method that takes two Array arguments in which each Array 
# contains a list of numbers, and returns a new Array that contains 
# the product of each pair of numbers from the arguments that have 
# the same index. You may assume that the arguments contain the same 
# number of elements.
#
def multiply_list(a, b)
  a.each_with_index.map { |num_a, index| num_a * b[index] }
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]