# RB101-109 Small Problems
# Medium Problems 2, Question 1 - Longest sentence
# https://launchschool.com/exercises/5c3e3cf3
#
# Write a program that reads the content of a text file and then 
# prints the longest sentence in the file based on number of words. 
# Sentences may end with periods (.), exclamation points (!), or 
# question marks (?). Any sequence of characters that are not spaces 
# or sentence-ending characters should be treated as a word. You 
# should also print the number of words in the longest sentence.

def load_document(filename)
  document = File.read(filename)
  document.gsub!(/\n/, " ")
  document  
end

def count_words_in_sentences(document)
  sentences = document.split(/[.!?]/)

  sentence_word_counts = {}
 
  sentences.each do |sentence| 
    words = sentence.strip.split(/\s/)
    sentence_word_counts [sentence] = words.length
  end

  sentence_word_counts
end

def find_longest_sentence(sentence_word_counts)
  longest_sentence = nil
  longest_sentence_length = 0

  sentence_word_counts.each do |sentence, word_count|
    next if word_count < longest_sentence_length
    longest_sentence_length = word_count
    longest_sentence = sentence
  end
  
  [longest_sentence, longest_sentence_length]
end

document = load_document('pg84.txt')

sentence_word_counts = count_words_in_sentences(document)

longest_sentence, word_count = find_longest_sentence(sentence_word_counts)
puts "The longest sentence has #{word_count} words in it:"
puts longest_sentence


## LS solution:
# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"
