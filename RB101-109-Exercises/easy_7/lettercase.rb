# RB101-109 Small Problems
# Easy 7, Question 2 - Lettercase Counter
# https://launchschool.com/exercises/96e0267a
#
# Write a method that takes a string, and then returns a hash 
# that contains 3 entries: one represents the number of characters 
# in the string that are lowercase letters, one the number of 
# characters that are uppercase letters, and one the number of 
# characters that are neither.

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

## LS solution:
# But again, this is not very efficient... go through the wholle string
# 3 times over?
#
# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
