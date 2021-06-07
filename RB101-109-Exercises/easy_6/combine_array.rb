# RB101-109 Small Problems
# Easy 6, Question 6 - Combining Arrays
# https://launchschool.com/exercises/1ba11514
#
# Write a method that takes two Arrays as arguments, and 
# returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, even 
# if there are duplicates in the original Arrays.

def merge(a, b)
  new_array = []
  
  a.each do |item|
    new_array << item if !new_array.include? (item)
  end

  b.each do |item|
    new_array << item if !new_array.include? (item)
  end

  new_array.sort
end

## launch school solution: 
## a | b
## See https://ruby-doc.org/core-2.7.0/Array.html#method-i-7C

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
