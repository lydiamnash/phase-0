#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: None
# Output: a string with my name in it.
# Steps:
	# CREATE a class that initializes a var with my name in it.
	# CREATE a class that will
		# CREATE an instance of the previous class
		# PRINT the value of that instance var with string text around it.

class NameData

  attr_reader :name
  
  def initialize
    @name = "Lydia"
  end
end

my_name = NameData.new
p my_name.name

class Greetings

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today!"
  end

end

greet = Greetings.new
p greet.hello

# Reflection
# Release 1
	# What are these methods doing?
	# The first method, initialize, initializes the new profile object and sets the arguments equal to 
	# instance variables. The next method prints all the information to the console. "What is age" prints 
	# the age of person profiled to the console. change_my_age takes an integer as its argument and overwrites
	# that value to the @age var. what_is_name prints the name of the profiled person, the change_my_name 
	# overwrites the name var with a new name. The occupation methods do the same thing for the occupation var 
	# as the two previous methods do for name.


	# How are they modifying or returning the value of instance variables?
	# they are modifiying the value by taking a new argument and overwriting the old information.

# Release 2
	# What changed between the last release and this release?
	# The method what_is_age, which returned the instance var @age is now attr_reader: age. The method name is now age.

	# What was replaced?
	# The method definition was replaced with attr_reader and the method name is now age.

	# Is this code simpler than the last?
	# Yes, much!

# Release 3
	# What changed between the last release and this release?
	# The change_my_name method was deleted and replaced with attr_writer: age. Also, the method to change the 
	# age can just be called by using .age.

	# What was replaced?
	# The change_my_age method was replaced.

	# Is this code simpler than the last?
	# Yes, simpler!

# Release 6
	# What is a reader method?
	# Reader methods return an instance var.

	# What is a writer method?
	# Writer methods allow you to assign a value to an instance var.

	# What do the attr methods do for you?
	# Attr methods allow you to streamline reading and writing of instance vars.

	# Should you always use an accessor to cover your bases? Why or why not?
	# Not necesarily. Doing so could introduce bugs in your program.

	# What is confusing to you about these methods?
	# I still don't know exactly when to use each. I know conceptually why, but I can't provide an example.
