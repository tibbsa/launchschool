# RB101-109 Small Problems
# Debugging, Question 6 - Getting Things Done
# https://launchschool.com/exercises/9e40881a
#
# We wrote a method for moving a given number of elements from one 
# array to another. We decide to test it on our todo list, but 
# invoking move on line 11 results in a SystemStackError. What 
# does this error mean and why does it happen?
#
# bug fix: needed to add "if n > 1" to break out of recursive method
#
def move(n, from_array, to_array)
  to_array << from_array.shift
  
  move(n - 1, from_array, to_array) if n > 1
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
