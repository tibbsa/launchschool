# RB101-109 Small Problems
# Medium Problems 2, Question 2 - Now I know my ABCs
# https://launchschool.com/exercises/41e03303
#
# A collection of spelling blocks has two letters per block, as shown in 
# this list.
#
# This limits the words you can spell with the blocks to just those words 
# that do not use both letters from any given block. Each block can 
# only be used once.
#
# Write a method that returns true if the word passed in as an argument 
# can be spelled from this set of blocks, false otherwise.

blocks = [
  %w(B O), %w(X K), %w(D Q), %w(C P), %w(N A),
  %w(G T), %w(R E), %w(F S), %w(J W), %w(H U),
  %w(V I), %w(L Y), %w(Z M)
]

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# In the solution the String#count method is used. This 
# allows us to count the number of occurrences of a collection of 
# characters. The collection of characters will be each block we 
# want to check. If we find a count of 2 or greater, then we know 
# that either both block characters are contained within the string, 
# or that a character from the current block occurs more than once in 
# that string.

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
