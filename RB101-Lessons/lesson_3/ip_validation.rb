# https://launchschool.com/lessons/263069da/assignments/643eae16
# Lesson 3, Meidum 2 Problems
# Question 4

def is_an_ip_number?(str)
  (0..255).include? (str.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_an_ip_number?(word)
  end
  
  true
end


dot_separated_ip_address? ("1.2.3.4")

puts dot_separated_ip_address?("1.2.3.4") == true
puts dot_separated_ip_address?("192.168.2.21") == true
puts dot_separated_ip_address?("0.0.0.0") == true
puts dot_separated_ip_address?("255.255.255.255") == true
puts dot_separated_ip_address?("1.2.3") == false
puts dot_separated_ip_address?("8.7.6.5.4.3.2.1") == false
puts dot_separated_ip_address?("a.b.c.d") == false






