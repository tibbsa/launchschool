# RB101-109 Small Problems
# Easy 3, Question 8 - Palindromic Strings (part 1)
# https://launchschool.com/exercises/71ca3279
#
# Write a method that returns true if the string passed as 
# an argument is a palindrome, false otherwise. A palindrome reads 
# the same forward and backward. For this exercise, case matters as 
# does punctuation and spaces.

def palindrome? (str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true