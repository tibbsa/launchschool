## https://edabit.com/challenge/PJ44oPuWhgQwDSifA
##
# Create a function that returns the simplified version of a fraction.

# Examples
# simplify("4/6") ➞ "2/3"

# simplify("10/11") ➞ "10/11"

# simplify("100/400") ➞ "1/4"

# simplify("8/4") ➞ "2"
# Notes
# A fraction is simplified if there are no common factors (except 1) between the numerator and the denominator. For example, 4/6 is not simplified, since 4 and 6 both share 2 as a factor.
# If improper fractions can be transformed into integers, do so in your code (see example #4).

def cleandiv?(num, divisor)
  num % divisor == 0
end

def simplify(frac_str)
  numerator, denominator = frac_str.split("/")
  numerator = numerator.to_i
  denominator = denominator.to_i

  # simplify improper fractions if possible
  if (numerator >= denominator) && cleandiv?(numerator, denominator)
    return (numerator / denominator).to_s;
  end

  numerator.downto(1) do |current_factor|
    if cleandiv?(numerator, current_factor) && 
       cleandiv?(denominator, current_factor)
      return "#{numerator/current_factor}/#{denominator/current_factor}"
    end
  end

  ## can't be simplified
  return frac_str
end

p simplify("4/6") #== "2/3"
p simplify("10/11") #== "10/11"
p simplify("100/400") #== "1/4"
p simplify("8/4") #== "2"
