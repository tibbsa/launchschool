# RB101-109 Small Problems
# Easy 6, Question 7 - Halvsies
# https://launchschool.com/exercises/d9b79537
#
# Write a method that takes an Array as an argument, and 
# returns two Arrays (as a pair of nested Arrays) that contain 
# the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle 
# element should be placed in the first half Array.

def halvsies(arr)
  if arr.size == 0 then
    return [[], []]
  else
    split_point = (arr.size / 2.0).ceil - 1
    return [arr[(0..split_point)], arr[split_point+1..arr.length-1]]
  end 
end

## Launch school solution:
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
