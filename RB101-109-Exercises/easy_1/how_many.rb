# RB101-109 Small Problems
# Easy 1, Question 4 - How many?
# https://launchschool.com/exercises/d5c51b39
#
# Write a method that counts the number of occurrences of each 
# element in a given array.
#

def count_occurrences(vehicles)
  occur_count = Hash.new(0)
  vehicles.each { |str| occur_count[str.to_sym] += 1 }
  occur_count.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

