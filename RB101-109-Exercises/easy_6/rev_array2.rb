# RB101-109 Small Problems
# Easy 6, Question 5 - Reversed arrays 2
# https://launchschool.com/exercises/577016f3
#
# Write a method that takes an Array, and returns a new Array with the 
# elements of the original list in reverse order. Do not modify the 
# original list.
#
# You may not use Array#reverse or Array#reverse!, nor may you use 
# the method you wrote in the previous exercise.

def reverse(arr)
  new_array = []
  arr.reverse_each { |x| new_array << x }
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
