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

