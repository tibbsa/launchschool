# RB101-109 Small Problems
# Easy 6, Question 4 - Reversed arrays
# https://launchschool.com/exercises/eec5e591
#
# Write a method that takes an Array as an argument, and reverses 
# its elements in place; that is, mutate the Array passed into this 
# method. The return value should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.
#
def reverse!(arr)
  index = 0

  while index < arr.length/2 do
    end_index = -index - 1
    arr[index], arr[end_index] = arr[end_index], arr[index]
    index += 1
  end

  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
