# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent .5 hours on this challenge.

# Pseudocode

# INITIALIZE
# Input: an array of strings
# Output: an array of strings
# Steps: 
# 	argument error if array is empty
# 	set label var equal to class var

# SIDES
# Input: an array of strings
# Output: the size of the array
# Steps: use method to calc size of an array

# ROLL
# Input: an array of strings
# Output: random element from the array
# Steps: use methods to access a random element


# Initial Solution
=begin
class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("Please enter an array that is not empty") if labels.empty?
  end

  def sides
  	@labels.size
  end

  def roll
  	return @labels.shuffle.first
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("Please enter an array that is not empty") if labels.empty?
  end

  def sides
  	@labels.size
  end

  def roll
  	return @labels.sample
  end
end


# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The logic was the same. Since this was an array of strings, though, we just had to change the way we got to the same answers (had to use methods such as size, and .empty?).

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# It is so much easier to revise code that is readable, concise, and clear. 

# What new methods did you learn when working on this challenge, if any?
# I learned the sample method. This method accesses a random element in an array.

# What concepts about classes were you able to solidify in this challenge?
# Passing variable between methods within classes. 


