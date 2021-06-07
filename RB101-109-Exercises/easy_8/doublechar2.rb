# RB101-109 Small Problems
# Easy 8, Question 8 - Double Char, Part 2
# https://launchschool.com/exercises/86fbfc4c
#
# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, 
# punctuation, and whitespace should not be doubled.


def double_consonants(str)
  str.gsub(/([bcdfghjklmnpqrstvwxyz])/i, '\1\1')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""