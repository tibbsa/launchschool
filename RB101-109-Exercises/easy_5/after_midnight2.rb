# RB101-109 Small Problems
# Easy 5, Question 3 - After Midnight (Part 2)
# https://launchschool.com/exercises/34f92353
#
# As seen in the previous exercise, the time of day can be represented 
# as the number of minutes before or after midnight. If the number of 
# minutes is positive, the time is after midnight. If the number of 
# minutes is negative, the time is before midnight.
# 
# Write two methods that each take a time of day in HOURS_PER_DAY hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.
#

MINS_PER_DAY=1440
HOURS_PER_DAY=24

def decode_time(str) # returns hours, minutes
  # input format: HH:MM
  hours = str[0, 2].to_i
  hours -= HOURS_PER_DAY until hours < HOURS_PER_DAY

  minutes = str[3, 2].to_i
  [hours, minutes]

  ## LS solution: hours, minutes = time_str.split(':').map(&:to_i)
end

def before_midnight(str)
  delta = after_midnight(str)
  [delta, MINS_PER_DAY - delta].min
end

def after_midnight(str)
  hours, minutes = decode_time(str)
  (hours * 60) + minutes
end

p after_midnight('00:00')  == 0
p before_midnight('00:00') == 0
p after_midnight('12:34')  == 754
p before_midnight('12:34') == 686
p after_midnight('24:00')  == 0
p before_midnight('24:00') == 0
