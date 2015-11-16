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
# To define a local variable, the first letter should be capitalized or should begin with an underscore. Then you set it equal to the value you want it assume.
#
# How do you define a method?
# A method is defined by the following syntax: def [method-name]([arguement(s)]).

# What is the difference between a local variable and a method?
# A local variable is defined within a method and can be called within that method. A method is program. 

# How do you run a ruby program from the command line?
# You can run a program from the command line by entering: ruby [file-name.rb]
#
# How do you run an RSpec file from the command line?
# Make sure that you are in the same directory as the the rspec file and your code file. Type in "rspec [rspec file name]". 
#
# What was confusing about this material? What made sense?
# For the more complicated methods, it was hard for me to remember when certain things needed to be converted to a string or to a number. 
#


# Challenge URLS:
# Define Method
# https://github.com/lydiamnash/phase-0/blob/master/week-4/define-method/my_solution.rb

# 4.3.1 (Address)
# https://github.com/lydiamnash/phase-0/blob/master/week-4/address/my_solution.rb

# 4.3.2 (Math)
# https://github.com/lydiamnash/phase-0/blob/master/week-4/math/my_solution.rb

