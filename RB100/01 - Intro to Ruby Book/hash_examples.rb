# https://launchschool.com/books/ruby/read/intro_exercises

# Exercise 1
# Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |val| puts val }

# Same as above, but only print out values greater than 5.
arr.each do |val|
  if val > 5
    puts val
  end
end

# Now, using the same array from #2, use the select method to extract 
# all odd numbers into a new array.
odds = arr.select { |val| val.odd? }

# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push (11)
arr.unshift (0)

# Get rid of 11. And append a 3.
arr.delete(11) # or arr.pop
arr.push(3)

# Get rid of duplicates without specifically removing any one value.
arr.uniq!

# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = { a:1, b:2, c:3, d:4 }
# 1. Get the value of key `:b`.
puts h[:b]
# Add to this hash the key:value pair `{e:5}`
h[:e] = 5

# Remove all key:value pairs whose value is less than 3.5
h.delete_if { |key, value| value < 3.5 }
puts h

# Given the following data structures. Write a program that copies the information 
# from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email]   = contact_data[0][0] 
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone]   = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0] 
contacts["Sally Johnson"][:address] = contact_data[1][1] 
contacts["Sally Johnson"][:phone] = contact_data[1][2] 
puts(contacts)

# Using the hash you created from the previous exercise, demonstrate 
# how you would access Joe's email and Sally's phone number?
puts("Joe's email is #{contacts['Joe Smith'][:email]}")
puts("Sally's phone is #{contacts['Sally Johnson'][:phone]}")

# Use Ruby's Array method delete_if and String method start_with? 
# to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |val| val.start_with? ("s") }
puts arr

puts "===================="

# Take the following array and turn it into a new array
# that consists of strings containing one word. (ex. 
# ["white snow", etc...] → ["white", "snow", etc...]. Look into using
# Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
puts a.map { |val| val.split(" ") }.flatten


puts "========================"

# Challenge: In exercise 11, we manually set the contacts hash values one 
# by one. Now, programmatically loop or iterate over the contacts hash 
# from exercise 11, and populate the associated data from the 
# contact_data array. Hint: you will probably need to iterate over
# ([:email, :address, :phone]), and some helpful methods might be the 
# Array shift and first methods.
# 
# Note that this exercise is only concerned with dealing with 1 entry 
# in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

[:email, :address, :phone].each { |field| 
  contacts['Joe Smith'][field] = contact_data.shift
}

puts contacts

puts "========================"

# As a bonus, see if you can figure out how to make it work with 
# multiple entries in the contacts hash.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

flat = contact_data.flatten
contacts.each { |contact, v| 
  [:email, :address, :phone].each { |field| 
    contacts[contact][field] = flat.shift
  }
}
puts contacts
