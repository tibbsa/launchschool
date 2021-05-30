# RB101-109 Small Problems
# Easy 1, Question 4 - How many?
# https://launchschool.com/exercises/d5c51b39
#
# Write a method that counts the number of occurrences of each 
# element in a given array.
#
# Test: With large arrays, what is faster?
# Disabled "printing" as output speed is not the issue

WORDS_COUNT=5_000_000

require 'lorem_ipsum_amet'
require 'benchmark'

def count_occurrences(words)
  occur_count = Hash.new(0)
  words.each { |str| occur_count[str.to_sym] += 1 }
  #occur_count.each { |word, count| puts "#{word} => #{count}" }
end

def count_occurrences_ls_solution(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  #occurrences.each do |element, count|
  #  puts "#{element} => #{count}"
  #end
end  

words = LoremIpsum.lorem_ipsum(words: WORDS_COUNT).split
Benchmark.bm (20) do |bm|
  bm.report("My solution:") do
    count_occurrences(words)
  end

  bm.report("LS Solution:") do
    count_occurrences_ls_solution(words)
  end
end
