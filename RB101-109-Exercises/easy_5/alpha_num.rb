# RB101-109 Small Problems
# Easy 5, Question 8 - Alphabetical Numbers
# https://launchschool.com/exercises/c688f4e5
#
# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the English 
# words for each number:
#
# zero, one, two, three, four, five, six, seven, eight, nine, 
# ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, 
# seventeen, eighteen, nineteen
#

NUMBER_NAMES = { 
  0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 
  5 => "five", 6 => "six", 7 => "seven", 8 => "eight",
  9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 
  13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 
  17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
}

def alphabetic_number_sort (numbers)
  numbers.map { |number| NUMBER_NAMES[number]}  # convert digits to names
         .sort                                  # sort based on names
         .map { |name| NUMBER_NAMES.key(name) } # convert name to digit
end

## Launch school solution:
# NUMBER_WORDS = %w(zero one two three four
#   five six seven eight nine
#   ten eleven twelve thirteen fourteen
#   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
