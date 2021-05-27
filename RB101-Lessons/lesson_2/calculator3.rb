# https://launchschool.com/lessons/a0f3cd44/assignments/7add52d9
# Assignment:

# 1. The current method of validating the input for a number is very weak.
#    It's also not fully accurate, as you cannot enter a 0. Come up with a
#    better way of validating input for integers.
#       (fixed as a part of #2)
# 2. Suppose we're building a scientific calculator, and we now need to
#    account for inputs that include decimals. How can we build a validating 
#    method, called number?, to verify that only valid numbers -- integers 
#    or floats -- are entered?
# 3. Our operation_to_message method is a little dangerous, because we're relying 
#    on the case statement being the last expression in the method. What if 
#    we needed to add some code after the case statement within the method? 
#    What changes would be needed to keep the method working with the rest 
#    of the program?

require "yaml"

MESSAGES = YAML::load_file("calculator3.yaml")

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /^-?\d+.?\d?$/.match(num)
  ## num == "0" || (num.to_i() != 0) || (num.to_f() != 0.0)
  ## possible more complete option: /^-?\d+$/.match(num)
end

def operation_to_message(op)
  opstring = case op
             when '1' then 'Adding'
             when '2' then 'Subtracting'
             when '3' then 'Multiplying'
             when '4' then 'Dividing'
             end

  return opstring
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    puts MESSAGES['valid_name']
  else
    break
  end
end

prompt(MESSAGES['greeting'].gsub("%name%", name))

loop do
  number1 = nil

  loop do
    prompt(MESSAGES['first_num_prompt'])
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)

    prompt(MESSAGES['invalid_num'])
  end

  number2 = nil
  loop do
    prompt(MESSAGES['second_num_prompt'])
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)

    prompt(MESSAGES['invalid_num'])
  end

  prompt(MESSAGES['operation_prompt'])
  
  operator = nil
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_op'])
    end
  end

  result = case operator
           when "1"
             number1.to_f + number2.to_f
           when "2"
             number1.to_f - number2.to_f
           when "3"
             number1.to_f * number2.to_f
           when "4"
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES['result_hdr'].
    gsub('%operation%', operation_to_message(operator)))
    
  prompt(MESSAGES['result_str'].
    gsub("%result%", result.to_s))

  prompt(MESSAGES['retry_prompt'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['signoff'])
