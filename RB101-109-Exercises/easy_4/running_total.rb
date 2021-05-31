# RB101-109 Small Problems
# Easy 4, Question 6 - Running Totals
# https://launchschool.com/exercises/ba434183
#
# Write a method that takes an Array of numbers, and returns an 
# Array with the same number of elements, and each element has 
# the running total from the original Array.

##
## LS solution:
##     sum = 0
##     array.map { |value| sum += value }
##

def running_total(arr)
  total_arr = []
  arr.each do |val|
    total_arr << (total_arr.empty? ? val : total_arr.last + val)
  end
  total_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []