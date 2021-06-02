# RB101-109 Small Problems
# Easy 5, Question 4 - Letter Swap
# https://launchschool.com/exercises/56e92849
#
# Given a string of words separated by spaces, write a method that 
# takes this string of words and returns a string in which the first 
# and last letters of every word are swapped.
#
# You may assume that every word contains at least one letter, and 
# that the string will always contain at least one word. You may also 
# assume that each string contains nothing but words and spaces.
#

def swap(str)
  words = str.split(' ')

  words.map! do |word|
    word if word.size == 1
    word.gsub(/^(.)(.*)(.)$/, '\3\2\1')
    ## LS solution shows you can use multiple "in place" assignment
    ## in Ruby and not have anything fail:
    ##
    ##   word[0], word[-1] = word[-1], word[0]
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'