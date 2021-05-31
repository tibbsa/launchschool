# RB101-109 Small Problems
# Easy 4, Question 1 - Short Long Short
# https://launchschool.com/exercise_sets/5401445c
#
# Write a method that takes two strings as arguments, determines the 
# longest of the two strings, and then returns the result of 
# concatenating the shorter string, the longer string, and the 
# shorter string once again. You may assume that the strings are of 
# different lengths.

def short_long_short(str1, str2)
  if str1.length > str2.length 
    return str2.concat(str1, str2)
  else
    return str1.concat(str2, str1)    
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"