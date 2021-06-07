# RB101-109 Small Problems
# Easy 7, Question 4 - Swap Case
# https://launchschool.com/exercises/f149de8d
#
# Write a method that takes a string as an argument and returns a 
# new string in which every uppercase letter is replaced by its 
# lowercase version, and every lowercase letter by its uppercase 
# version. All other characters should be unchanged.
#
# You may not use String#swapcase; write your own version of this method.
#

def swapcase(str) 
  new_str_chars = str.chars.map do |character|
    if character =~ /[a-z]/
      character.upcase
    elsif character =~ /[A-Z]/
      character.downcase
    else
      character
    end
  end

  new_str_chars.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
