# RB101-109 Small Problems
# Easy 1, Question 5 - Reverse it (Part 2)
# https://launchschool.com/exercises/b415a65e
#
# Write a method that takes one argument, a string containing one or 
# more words, and returns the given string with words that contain 
# five or more characters reversed. Each string will consist of #
# only letters and spaces. Spaces should be included only when 
# more than one word is present.

def reverse_words(sentence)
  mod_words = []
  sentence.split.each do |word|
    if word.length >= 5
      mod_words << word.reverse
    else
      mod_words << word
    end
  end

  mod_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
