# RB120 OO Programming - Easy 1 Exercises
# Exercise 1 - Banner Class
# https://launchschool.com/exercises/de341977
#
# Behold this incomplete class for constructing boxed banners.
# Complete this class so that the test cases shown below work as intended. 
# You are free to add any methods or instance variables you need. However, 
# do not make the implementation details public.
# 
# You may assume that the input will always fit in your terminal window.

class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def interior_box_width
    @message.length + 2
  end

  def horizontal_rule
    "+" + "-" * interior_box_width + "+"
  end

  def empty_line
    "|" + " " * interior_box_width + "|"
  end

  def message_line
    "| #{@message} |"
  end
end


banner = Banner.new('To boldly go where no one has gone before.')
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('')
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+

