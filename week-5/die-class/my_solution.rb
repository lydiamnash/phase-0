# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode


# Input: number of sides
# Output: number of sides, random roll
# Steps: if there are less than 1 sides, error message; 


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Please enter an integer greater than or equal to 1.")
    end
    @sides = sides
  end

  def sides
  	@sides
  end

  def roll
    rand(1..@sides)
  end
end
=end


# 3. Refactored Solution - no changes from above
class Die
  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Please enter an integer greater than or equal to 1.")
    end
    @sides = sides
  end

  def sides
  	@sides
  end

  def roll
    rand(1..@sides)
  end
end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error tells the user they entered the wrong number of arguments (unless there is an exception). The primary use is to alert the user to enter new input that doesn't produce an argument error.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The rand method was new. The only issue I had was that I originally put the syntax like: @sides.rand, but that didn't work :)

What is a Ruby class?
A Ruby class is a type of variable. Ruby has some built-in classes like string and number. These class variables have specific properties. 

Why would you use a Ruby class?
Ruby classes are another way to validate and apply certain properties to objects. 

What is the difference between a local variable and an instance variable?
A local variable is defined in a method, an instance variable is defined within a class. 

Where can an instance variable be used?
Instance variables can be used within classes. 
	
=end