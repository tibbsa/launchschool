# RB101-109 Small Problems
# Debugging, Question 7 - Neutralizer
# https://launchschool.com/exercises/51385f07
#
# We wrote a neutralize method that removes negative words from 
# sentences. However, it fails to remove all of them. What 
# exactly happens?
#
def neutralize(sentence)
  words = sentence.split(' ')

  # bug fix: 
  # words.each do |word|
  #   words.delete(word) if negative?(word)
  # end
  #
  # Can't delete while iterating. Use this instead:
  words.reject! { |word| negative?(word) }

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
