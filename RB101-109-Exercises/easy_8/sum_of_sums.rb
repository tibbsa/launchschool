# RB101-109 Small Problems
# Easy 8, Question 1 - Sum of Sums
# https://launchschool.com/exercises/8a66610c
#
# Write a method that takes an Array of numbers and then returns 
# the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.
#
def sum_of_sums(arr)
  total = 0

  (0..(arr.length - 1)).each do |run_length|
    total += arr[(0..run_length)].inject(:+)
  end
  
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35