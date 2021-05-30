# RB101-109 Small Problems
# Easy 3, Question 9 - Palindromic Strings (part 2)
# https://launchschool.com/exercises/8fca300b
#
# Write another method that returns true if the string passed as an 
# argument is a palindrome, false otherwise. This time, however, 
# your method should be case-insensitive, and it should ignore 
# all non-alphanumeric characters. If you wish, you may simplify 
# things by calling the palindrome? method you wrote in the 
# previous exercise.

def palindrome? (str)
  str == str.reverse
end

#
# launch school solution: 
#   string = string.downcase.delete('^a-z0-9')
#
# see string#delete and string#count to understand, but essentially this
# deletes everything from the string that does NOT match what is passed
# (note this is NOT a regex: see count() for what this string means)
#

def real_palindrome? (str)
  cleaned_str = ''

  str.downcase.chars.each do |char|
    cleaned_str << char if char =~ /[a-z0-9]/ 
  end

  palindrome? (cleaned_str)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false