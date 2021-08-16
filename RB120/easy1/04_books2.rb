# RB120 OO Programming - Easy 1 Exercises
# Exercise 4 - Fix the Program - Books 2
# https://launchschool.com/exercises/f6f7f6d7
#
# Complete this program so that it produces the expected output:
#   The author of "Snow Crash" is Neil Stephenson.
#   book = "Snow Crash", by Neil Stephenson.

class Book
  attr_accessor :author, :title
  
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

