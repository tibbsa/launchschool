# RB101-109 Small Problems
# Easy 8, Question 6 - Fizzbuzz
# https://launchschool.com/exercises/f1c61d35
#
# Write a method that takes two arguments: the first is the starting 
# number, and the second is the ending number. Print out all 
# numbers between the two numbers, except if a number is divisible 
# by 3, print "Fizz", if a number is divisible by 5, print "Buzz", 
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(starting, ending)
  printout = []
  (starting..ending).each do |num|
    div3 = (num % 3) == 0
    div5 = (num % 5) == 0
    
    if div3 && div5
      printout << 'FizzBuzz'
    elsif div3  
      printout << 'Fizz'
    elsif div5 
      printout << 'Buzz'
    else
      printout << num
    end
  end

  puts printout.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz