## https://edabit.com/challenge/jfPTLHayEMmqqdiRZ
##
## A robot has been given a list of movement instructions. Each instruction is either left, right, up or down, followed by a distance to move. The robot starts at [0, 0]. You want to calculate where the robot will end up and return its final position as an array.
# Notes
# The only instructions given will be left, right, up or down.
# The distance after the instruction is always a positive whole number.


# To illustrate, if the robot is given the following instructions:

# ["right 10", "up 50", "left 30", "down 10"]
# It will end up 20 left and 40 up from where it started, so we return [-20, 40].

def track_robot(instructions)
  pos_x = 0
  pos_y = 0
  
  instructions.each do |cmd|
    direction, distance = cmd.split(' ')
    distance = distance.to_i

    case direction
    when 'left' then pos_x -= distance
    when 'right' then pos_x += distance
    when 'down' then pos_y -= distance
    when 'up' then pos_y += distance
    end
  end

  [pos_x, pos_y]
end

# Examples
p track_robot(["right 10", "up 50", "left 30", "down 10"]) == [-20, 40]

p track_robot([]) == [0, 0]
# // If there are no instructions, the robot doesn't move.

p track_robot(["right 100", "right 100", "up 500", "up 10000"]) == [200, 10500]

