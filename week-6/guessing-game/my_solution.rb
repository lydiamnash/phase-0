# Build a simple guessing game


# I worked on this challenge myself.
# I spent 1 hours on this challenge.

# Pseudocode

# INITIALIZE
# Input: integer
# Output: integer
# Steps: argumenterror if not integer, set answer equal to class equivalent

# GUESS
# Input: integer
# Output: :low, :high, :correct
# Steps: 
	# IF guess is less than answer, return low
	# ELSIF guess is more than answer, return high
	# ELSE return correct

# SOLVED
# Input: answer and last guess
# Output: true, false
# Steps: 
	# IF answer = last guess, return true
	# ELSE false 


# Initial Solution
=begin
class GuessingGame

  def initialize(answer)
 	@answer = answer
 	unless answer.is_a?(Integer)
    	raise ArgumentError.new("Please enter an integer")
	end
  end

  def guess(guess)
  	@guess = guess
  	if guess < @answer
  		return :low
  	elsif guess > @answer
  		return :high
  	else
  		return :correct
  	end
  end
  	
  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end

end
=end



# Refactored Solution - same as above
class GuessingGame

  def initialize(answer)
 	@answer = answer
 	unless answer.is_a?(Integer)
    	raise ArgumentError.new("Please enter an integer")
	end
  end

  def guess(guess)
  	@guess = guess
  	if guess < @answer
  		return :low
  	elsif guess > @answer
  		return :high
  	else
  		return :correct
  	end
  end
  	
  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end

end





# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# I'm not sure if I understand this question fully...?

# When should you use instance variables? What do they do for you?
# You should instance variables when you need to use a variable in multiple methods. Instance variables can be used across methods whereas local variables can only be used within it's scope (in this case, a method).

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is the use of logical statements that use conditions to direct what code is used. No issues using flow control in this challenge.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think we used symbols because they are faster to process than strings. Although it probably doesn't make much of a difference for this challenge, it will when we are acessing large volumes of data.
