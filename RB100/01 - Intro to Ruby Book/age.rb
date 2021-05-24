puts "How old are you now?"
age = gets.chomp.to_i

ageCats = [ 10, 20, 30, 40 ]
ageCats.each { |yrs_future| 
  puts "In #{yrs_future} years, you will be #{age + yrs_future}!" 
}
