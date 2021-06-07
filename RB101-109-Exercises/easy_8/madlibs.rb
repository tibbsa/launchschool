# RB101-109 Small Problems
# Easy 8, Question 2 - Madlibs
# https://launchschool.com/exercises/76a6b44e
#
# Mad libs are a simple game where you create a story template with 
# blanks for words. You, or another player, then construct a list of 
# words and place them into the story, creating an often silly or 
# funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, 
# an adverb, and an adjective and injects those into a story that you create.
#
# e.g. 
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
#

def prompt(type_of_word_required)
  print "=> Enter a #{type_of_word_required}: "
  gets.chomp
end

words = { 
  :noun => nil, 
  :verb => nil, 
  :adjective => nil, 
  :adverb => nil 
}

words.each { |word_type, _| words[word_type] = prompt(word_type.to_s) }

puts sprintf("You really shouldn't %s your %s %s %s!", 
               words[:verb],
               words[:adjective],
               words[:noun],
               words[:adverb])
