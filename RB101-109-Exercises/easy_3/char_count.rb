# RB101-109 Small Problems
# Easy 3, Question 3 - Counting the number of characters
# https://launchschool.com/exercises/f85563ae
#
# Write a program that will ask a user for an input of a word or 
# multiple words and give back the number of characters. Spaces 
# should not be counted as a character.

print "Please write a word or multiple words: "
words = gets.chomp

# numbers of chars = length of string not counting spaces
puts "There are #{words.length - words.count(" ")} characters in \"#{words}\""
