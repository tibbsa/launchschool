# RB101-109 Small Problems
# Medium 1, Question 4 - 1000 lights
# https://launchschool.com/exercises/61d687f4
#
# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches and toggle every one of them. 
# You go back to the beginning, and on this second pass, you toggle 
# switches 2, 4, 6, and so on. On the third pass, you go back again 
# to the beginning and toggle switches 3, 6, 9, and so on. You repeat 
# this process and keep going until you have been through n repetitions.
#
# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after 
# n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
#
# The result is that 2 lights are left on, lights 1 and 4. 
# The return value is [1, 4].
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. 
# The return value is [1, 4, 9].

def light_run(iterations)
  light_status = Hash.new(false)
  
  1.upto(iterations) { |index| light_status[index] = false }

  step_size = 1
  while step_size <= iterations
    index = step_size

    while index <= iterations do
      light_status [index] = !light_status [index]
      index += step_size
    end
    
    step_size += 1
  end

  light_status.keep_if { |_, light_status| light_status }.keys
end

p light_run(5) == [1, 4]
p light_run(10) == [1, 4, 9]
