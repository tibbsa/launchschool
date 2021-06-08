# RB101-109 Small Problems
# Easy Problems 9, Question 11 - Group Anasgrams
# https://launchschool.com/exercises/3e3f841c
#
# Given this array:
#
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
# 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
# 'flow', 'neon']
#
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in 
# a different order. Your output should look something like this:
#
# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)

def count_letters_in_word(word)
  letters = Hash.new(0)
  word.chars.each { |letter| letters[letter] += 1 }
  letters
end

def find_anagrams(words)
  # make a copy so we can elininate words without changing the original
  # array
  words = words.dup
  anagrams = []

  index = 0
  while index < words.length
    word = words[index]
    word_letter_count = count_letters_in_word(word)

    anagrams_this_word = [word]
    search_index = index+1
    while search_index < words.length
      compare_word = words[search_index]

      if word_letter_count == count_letters_in_word(compare_word)
        anagrams_this_word << compare_word
      end

      search_index += 1
    end

    anagrams << anagrams_this_word

    # remove all found anagrams so we don't process them again later
    # in the loop
    words.delete_if { |word| anagrams_this_word.include?(word) }
    index += 1
  end

  anagrams
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams = find_anagrams(words)
anagrams.each { |anagram_set| p anagram_set }

