# RB101-109 Small Problems
# Easy 4, Question 2 - What Century is That?
# https://launchschool.com/exercises/d6a8f167
#
# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century 
# number, and ends with st, nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 
# 1901-2000 comprise the 20th century.

def century(year)
  century_num = year / 100 + 1
  if year % 100 == 0
    century_num -= 1
  end

  return "#{century_num}th" if [11, 12, 13].include?(century_num % 100)
  last_digit = century_num % 10

  case last_digit
  when 1 then "#{century_num}st"
  when 2 then "#{century_num}nd"
  when 3 then "#{century_num}rd"
  else "#{century_num}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
