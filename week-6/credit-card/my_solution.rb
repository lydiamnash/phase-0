# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps:
#  METHOD #1: 
  #  convert the number into a string, initialize the number length (raise argument error if not 16 digits)
#  METHOD #2:
  #  put the numbers in array
  #  double every other digit
  #  split numbers greater than 9 into two numbers
  #  sum all digits
#  METHOD #3:
  #  check if the remainder is divisible by 10, if so print true, otherwise false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    raise ArgumentError.new("Wrong number of digits, please enter exactly 16") if @card_number.length != 16
  end

  def double
    @split_card = @card_number.split(//).map!
    
    dog = @split_card.map.with_index { |value, index| index % 2 != 0? value: value.to_i * 2 }
    
    cat = dog.join.split(//).map { |digit| digit.to_i }

    @sum = 0
    cat.each {|x| @sum += x}
  end 
  
  def check
    if @sum % 10 == 0
      p true
    else
      p false
    end
  end
  
end
=end


# Refactored Solution
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.split(//)
    raise ArgumentError.new("Wrong number of digits, please enter exactly 16") if @card_number.length != 16
  end

  def double
    @double = @card_number.map.with_index { |value, index| index % 2 != 0? value: value.to_i * 2 }
    @doubled_array = @double.join.split(//).map { |digit| digit.to_i }

	@sum = @doubled_array.inject (:+)
  end 
  
  def check_card
    double
    @sum % 10 == 0
  end
end

# # DRIVER CODE
# number = 4563960122001999
# good = 4408041234567901
# bad = 4408041234567906
# card = CreditCard.new(number)
# card.double
# card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this exercise was isolating every other digit in the credit card number. We knew that we could use a counter as a last resort, but we knew we could somehow use with_index. but the syntax was hallenging.
#
# What new methods did you find to help you when you refactored?
# The with_index method was new to me. I also hadn't used inject.
#
# What concepts or learnings were you able to solidify in this challenge?
# I feel like this exercise helped me sort through which methods can be passed on which classes (i.e. split cannot be used on integers)


