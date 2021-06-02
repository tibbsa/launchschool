# RB101-109 Small Problems
# Easy 5, Question 7 - Letter Counter 2
# https://launchschool.com/exercises/16124e4d
#
# Modify the word_sizes method from the previous exercise to exclude 
# non-letters when determining word size. For instance, the 
# length of "it's" is 3, not 4.
#
# Words consist of any string of characters that do not include a space.
#

def word_sizes(str)
  word_sizes = Hash.new(0)

  str.split.each do |word|
    word_sizes[word.gsub(/[^a-zA-Z]/, '').size] += 1
    ## LS solution: word.delete('^A-Za-z')
  end

  word_sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}