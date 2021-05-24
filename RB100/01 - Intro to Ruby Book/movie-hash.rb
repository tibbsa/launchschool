# Write a program that uses a hash to store a list of movie 
# titles with the year they came out. Then use the puts command to
# make your program print out the year of each movie to the screen.

movies = {
  :back_to_the_future => 1984,
  :honest_men => 1988,
  :planes_trains_and_automobiles => 1992,
  :shrek => 2001,
  :marley => 2011
}

movies.each { |name, year| puts year }

# Use the dates from the previous example and store them in an array. 
# Then make your program output the same thing as exercise 3.
arr = movies.values
puts arr

# Write a program that calculates the squares of 3 float numbers of 
# your choosing and outputs the result to the screen.
square = lambda { |n| n*n }
puts [ 2.5, 5.25, 7.5 ].collect! &square
