## https://edabit.com/challenge/5iuGsNikso5hRstPT
##
## 
# Create a function that counts the number of times a particular letter shows up in the word search.

# Examples
# letter_counter([
#   ["D", "E", "Y", "H", "A", "D"],
#   ["C", "B", "Z", "Y", "J", "K"],
#   ["D", "B", "C", "A", "M", "N"],
#   ["F", "G", "G", "R", "S", "R"],
#   ["V", "X", "H", "A", "S", "S"]
# ], "D") ➞ 3

# # "D" shows up 3 times: twice in the first row, once in the third row.

# letter_counter([
#   ["D", "E", "Y", "H", "A", "D"],
#   ["C", "B", "Z", "Y", "J", "K"],
#   ["D", "B", "C", "A", "M", "N"],
#   ["F", "G", "G", "R", "S", "R"],
#   ["V", "X", "H", "A", "S", "S"]
# ], "H") ➞ 2
# Notes
# You will always be given an array with five sub-arrays.

def letter_counter(arr, letter)
  tally = arr.flatten.tally
  return tally.include?(letter) ? tally[letter] : 0;
end

p letter_counter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "D") == 3

p letter_counter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "H") == 2

p letter_counter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "I") == 0


