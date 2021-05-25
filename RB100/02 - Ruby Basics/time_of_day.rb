def time_of_day(is_daylight)
  puts is_daylight ? "It's daytime!" : "It's nighttime!"
end

daylight = [true, false].sample
time_of_day(daylight)
