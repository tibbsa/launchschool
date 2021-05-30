# RB101-109 Small Problems
# Easy 1, Question 5 - Reverse it (Part 1)
# https://launchschool.com/exercises/51e98567
#
# Write a method that takes one argument, a string, and returns 
# a new string with the words in reverse order.

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'