# RB101-109 Small Problems
# Easy 5, Question 10 - Bannerizer
# https://launchschool.com/exercises/29ffd590
#
# Write a method that will take a short line of text, and print 
# it within a box.
#
# Further explanation: 
# For a real challenge, try word wrapping very long messages so they 
# appear on multiple lines, but still within a box.

TERMINAL_WIDTH = 80
MARGIN = 1

def min(a, b) 
  a < b ? a : b
end

def word_wrap(message, message_width)
  messageLines = []
  curLine = ""

  message.split.each do |word|
    if (curLine.size + word.size >= message_width)
      messageLines << curLine
      curLine = ""
    end

    curLine << " " if curLine.size > 0
    curLine << word
  end
  
  ## save final line, if one was being built
  messageLines << curLine if curLine.size > 0 

  messageLines
end

def print_in_box(message)
  box_width = min(TERMINAL_WIDTH - 2,  # we lose 1 each side for the border
                  message.size + 2*MARGIN)
  message_width = box_width - 2*MARGIN

  border = "+#{'-' * box_width }+"
  blank  = "|#{' ' * box_width }+" 

  messageLines = word_wrap(message, message_width)
  
  puts border
  puts blank
  messageLines.each do |line|
    puts "|#{' ' * MARGIN}#{line.ljust(message_width)}#{' ' * MARGIN}|"
  end
  puts blank
  puts border
end


print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

print_in_box("Mrs Rachel Lynde lived just where the Avonlea main road dipped into a little hollow, fringed with alders and ladies' eardrops, and traversed by a brook that had its source away back in the woods of the old Cuthbert place; it was reputed to be an intricate, headlong brook in its earlier course through those woods, with dark secrets of pool and cascade; but by the time it reached Lynde's Hollow it was a quiet, well-conducted little stream, for not even a brook could run past Mrs Rachel Lynde’s door without due regard for decency and decorum...")
