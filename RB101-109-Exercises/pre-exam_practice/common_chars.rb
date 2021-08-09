## Practice exercise given in demo videos at 
## https://launchschool.com/lessons/3ce27abc/assignments/a3295d50

# Given an array of strings made only from lowercase letters, return an 
# array of all characters that show up in all strings within the given array
# (including duplicates). For example, if a character occurs 3 times in all
# strings but not 4 times, you need to include the character three times in 
# your final answer.

def common_chars(words)
  return [] if words.size == 0

  # hash will store min # of times each letter appears
  overall_min_letter_counts = Hash.new(0)

  # only the letters which appear in the first word could ever be common 
  # to all, so determine which letters those are
  words[0].chars.each do |character|
    overall_min_letter_counts[character] += 1
  end

  words[1..].each do |word|
    word_letter_counts = Hash.new(0)

    # determine, of the known common letters, how many times each appears 
    # in this word
    word.chars.each do |character|
      next if !overall_min_letter_counts.has_key?(character)
      word_letter_counts[character] += 1
    end

    # if the count for any known common letter is less than the current 
    # min count for that common letter, reduce accordingly
    overall_min_letter_counts.each do |letter, count| 
      overall_min_letter_counts[letter] = 
        [count, word_letter_counts[letter]].min
    end
  end
  
  # remove any letters that did not in fact appear in multiple words
  overall_min_letter_counts.delete_if { |letter, count| count == 0 }

  common_letters = []
  overall_min_letter_counts.each do |letter, count|
    1.upto(count) do 
      common_letters << letter
    end
  end

  common_letters.sort
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []
