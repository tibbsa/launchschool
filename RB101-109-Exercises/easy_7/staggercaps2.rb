# RB101-109 Small Problems
# Easy 7, Question 6 - Staggered Caps (Part 2)
# https://launchschool.com/exercises/6eb02aae
#
# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase 
# each letter. The non-alphabetic characters should still be included in 
# the return value; they just don't count when toggling the desired case.
#
def staggered_case(str) 
  next_char_is_uppercase = false

  new_chars = str.chars.map do |character|
    if !character.match(/[A-Za-z]/)
      character
    else
      next_char_is_uppercase = !next_char_is_uppercase
      next_char_is_uppercase ? character.upcase : character.downcase
    end
  end

  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'