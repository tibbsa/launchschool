# RB101-109 Small Problems
# Easy 5, Question 2 - After Midnight (Part 1)
# https://launchschool.com/exercises/864acdb4
#
# The time of day can be represented as the number of minutes before 
# or after midnight. If the number of minutes is positive, the time 
# is after midnight. If the number of minutes is negative, the time 
# is before midnight.
#
# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your method 
# should work with any integer input.
#
# You may not use ruby's Date and Time classes.
# 
# Disregard Daylight Savings and Standard Time and other complications.
#

def time_of_day(minutes)
  was_negative = (minutes < 0)
 
  min_abs = minutes.abs

  hours = min_abs / 60
  hours -= 24 until hours < 24

  minutes = min_abs % 60

  if (was_negative)
    sprintf("%02d:%02d", 23 - hours, 60 - minutes)
  else
    sprintf("%02d:%02d", hours, minutes)
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


## Launch School solution:
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end
