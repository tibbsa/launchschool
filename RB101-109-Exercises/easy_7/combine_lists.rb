# RB101-109 Small Problems
# Easy 7, Question 1 - Combine Two Lists
# https://launchschool.com/exercises/3b64283e
#
# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both Array 
# arguments, with the elements taken in alternation.
#
# You may assume that both input Arrays are non-empty, and 
# that they have the same number of elements.
#
def interleave(a, b)
  new_array = []
  
  index = 0
  while index < a.size do
    new_array << a[index]
    new_array << b[index]
    index += 1
  end

  new_array
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']