# RB101-109 Small Problems
# Easy 8, Question 4 - All Substrings
# https://launchschool.com/exercises/70718e76
#
# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the 
# substring begins. This means that all substrings that start at 
# position 0 should come first, then all substrings that start 
# at position 1, and so on. Since multiple substrings will occur 
# at each position, the substrings at a given position should be 
# returned in order from shortest to longest.

def substrings(str)
  subs = []

  0.upto(str.size - 1) do |index|
    index.upto(str.size - 1) do |end_index|
      subs << str[index..end_index]
    end
  end

  subs
end

p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
  ]