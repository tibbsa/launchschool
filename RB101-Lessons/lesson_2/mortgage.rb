# Assignment: Mortgage calculator
# https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d

def prompt(message)
  puts "=> #{message}"
end

def get_amount(prompt)
  loop do
    puts "=> #{prompt}"
    input = gets.chomp

    return input.to_f if /^\d+.?\d*$/.match(input) && input.to_f > 0
    prompt "Please enter a number greater than 0"
  end
end

loop do
  loan_amount = get_amount("Please enter the loan amount (e.g. $25000.00):")
  loan_duration = get_amount("Please enter the duration of the loan (in years, e.g. 5):")
  interest_rate = get_amount("Please enter the annual (APR) interest rate (as a %, e.g. 5.25):")

  loan_months = loan_duration * 12
  monthly_interest_rate = (interest_rate / 100) / 12

  payment = loan_amount *
            (monthly_interest_rate / (1 -
                (1 + monthly_interest_rate)**(-loan_months)))

  puts "The monthly loan amount is $#{format('%.2f', payment)}."
end
