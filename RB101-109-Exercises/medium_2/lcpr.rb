# RB101-109 Small Problems
# Medium Problems 2, Question 3 - Lettercase Percentage Ratio
# https://launchschool.com/exercises/e0500589
#
# In the easy exercises, we worked on a problem where we had to count 
# the number of uppercase and lowercase characters, as well as characters 
# that were neither of those two. Now we want to go one step further.
#
# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the percentage of characters in 
# the string that are lowercase letters, one the percentage of characters 
# that are uppercase letters, and one the percentage of characters that 
# are neither.
#
# You may assume that the string will always contain at least one character.

def letter_case_count(str)
  count_hash = { 
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  str.chars.each do |character|
    if /[[:lower:]]/.match(character)
      count_hash[:lowercase] += 1
    elsif /[[:upper:]]/.match(character)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end

  count_hash
end

def letter_percentages(str)
  letter_case_count(str).map do |key, value| 
    [key, 100.0 * value.fdiv(str.length)]
  end.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
