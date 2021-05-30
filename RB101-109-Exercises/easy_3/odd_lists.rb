# RB101-109 Small Problems
# Easy 3, Question 7 - Odd Lists
# https://launchschool.com/exercises/7ced73ba
#
# Write a method that returns an Array that contains every other 
# element of an Array that is passed in as an argument. The values 
# in the returned list should be those values that are in the 1st, 
# 3rd, 5th, and so on elements of the argument Array.


# array indices start at 0, so including the 'even' indexes pull in
# elements [0], [2], [4], etc., representing the 1st, 3rd, 5th elements
def oddities(arr)
  odd_elements = []
  arr.each_with_index { |item, index| odd_elements << item if index.even? }
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
