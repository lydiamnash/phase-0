# Mini Challenges - Full name greeting

puts 'Hello there, what\'s your first name?'

first_name = gets.chomp
puts 'Your name is ' + first_name + '? What a lovely name! What is your middle name?'

middle_name = gets.chomp
puts 'Your middle name is ' + middle_name + '? How nice. What is your last name?'

last_name = gets.chomp
puts 'Well, then, hello ' + first_name + ' ' + middle_name + ' ' + last_name + '. It is so nice to meet you!'


# Mini Challenge - Bigger, better favorite number

puts 'Hi, what is your favorite number? (Please enter only digits!)'

fav_number = gets.chomp
fav_number1 = fav_number.to_i + 1

puts 'Your favorite number is great! I went ahead and added one to it so it is even bigger and better! This is what it is now: ' + fav_number1.to_s + '.'


## Questions
# How do you define a local variable?
#
# How do you define a method?
# What is the difference between a local variable and a method?
# How do you run a ruby program from the command line?
# How do you run an RSpec file from the command line?
# What was confusing about this material? What made sense?




# Challenge URLS:
# Define Method
# https://github.com/lydiamnash/phase-0/blob/master/week-4/define-method/my_solution.rb

# 4.3.1 (Address)
# https://github.com/lydiamnash/phase-0/blob/master/week-4/address/my_solution.rb

# 4.3.2 (Math)
# https://github.com/lydiamnash/phase-0/blob/master/week-4/math/my_solution.rb

