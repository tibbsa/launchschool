# RB101-109 Small Problems
# Medium Problems 2, Question 4 - Matching Parntheses
# https://launchschool.com/exercises/f3d7f26e
#
# Write a method that takes a string as an argument, and returns true 
# if all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' 
# pairs.
#
# Examples:

def balanced?(str)
  open_count = 0
  
  str.each_char do |letter|
    if letter == '('
      open_count += 1
    elsif letter == ')'
      break if open_count == 0
      open_count -= 1
    end
  end

  open_count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
