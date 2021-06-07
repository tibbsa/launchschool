# RB101-109 Small Problems
# Easy 6, Question 1 - Cute Angles
# https://launchschool.com/exercises/054baaef
#
# Write a method that takes a floating point number that represents an 
# angle between 0 and 360 degrees and returns a String that represents 
# that angle in degrees, minutes and seconds. You should use a degree 
# symbol (°) to represent degrees, a single quote (') to represent 
# minutes, and a double quote (") to represent seconds. A degree has 
# 60 minutes, while a minute has 60 seconds.
#

def dms(angle)
  degrees = angle.floor
  minutes = (angle - degrees) * 60
  seconds = (angle - degrees - (minutes/60)) * 3600
  
  sprintf("%d°%02d'%02d", degrees, minutes, seconds)
end


p dms(30)        #== %(30°00'00")
p dms(76.73)     #== %(76°43'48")
p dms(254.6)     #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0)         #== %(0°00'00")
p dms(360)       #== %(360°00'00") || dms(360) == %(0°00'00")