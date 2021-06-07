# RB101-109 Small Problems
# Easy 7, Question 5 - Staggered Caps (Part 1)
# https://launchschool.com/exercises/77884ef5
#
# Write a method that takes a String as an argument, and returns a new 
# String that contains the original value using a staggered capitalization 
# scheme in which every other character is capitalized, and the 
# remaining characters are lowercase. Characters that are not 
# letters should not be changed, but count as characters when switching 
# between upper and lowercase.
#
def staggered_case(str) 
  next_char_is_uppercase = false

  new_chars = str.chars.map do |character|
    next_char_is_uppercase = !next_char_is_uppercase
    next_char_is_uppercase ? character.upcase : character.downcase
  end

  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
