# RB101-109 Small Problems
# Easy 5, Question 9 - Daily Double
# https://launchschool.com/exercises/690b2900
#
# Write a method that takes a string argument and returns a 
# new string that contains the value of the original string with 
# all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.
#

def crunch(str)
  cleaned_str = String.new

  for char in str.chars
    cleaned_str << char unless char == cleaned_str.chars.last
  end

  cleaned_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
