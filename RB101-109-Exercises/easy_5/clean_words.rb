# RB101-109 Small Problems
# Easy 5, Question 5 - Clean up the words
# https://launchschool.com/exercises/28ff0d86
#
# Given a string that consists of some words (all lowercased) and an 
# assortment of non-alphabetic characters, write a method that returns 
# that string with all of the non-alphabetic characters replaced by 
# spaces. If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result (the result should 
# never have consecutive spaces).

def cleanup(str)
  alphabetic_chars = ('a'..'z')

  counter = 0
  newstr = String.new
  loop do
    break if counter == str.size
    
    if !alphabetic_chars.include? (str[counter]) 
      # allow one blank space for non-alpha chars
      newstr << ' '
      loop do
        counter += 1
        break if counter == str.size || alphabetic_chars.include?(str[counter])
      end

      next
    end

    newstr << str[counter]
    counter += 1
  end

  newstr
end

p cleanup("---what's my +*& line?") == ' what s my line '


## Launch School solution 1:

# ALPHABET = ('a'..'z').to_a

# def cleanup(text)
#   clean_chars = []

#   text.chars.each do |char|
#     if ALPHABET.include?(char)
#       clean_chars << char
#     else
#       clean_chars << ' ' unless clean_chars.last == ' '
#     end
#   end

#   clean_chars.join
# end

## LS solution 2:

# def cleanup(text)
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end
