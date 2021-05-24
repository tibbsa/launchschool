numbers = []
count = 0

while count < 5
  numbers.push Random::rand(100)
  count += 1
end

puts numbers


## suggested solution:
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
########################

# The code below shows an example of a for loop. Modify the code so that it
# only outputs i if i is an odd number.

for i in 1..100
  puts i if i.odd? 
end
