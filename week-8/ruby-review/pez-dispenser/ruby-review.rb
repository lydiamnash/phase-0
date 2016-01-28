# Pez Dispenser

# User Stories

# As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that 
# represent Pez so it's easy to start with a full Pez dispenser.
# As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so 
# I can know how many are left.
# As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
# of the flavors coming up.

# PSEUDOCODE

# create a new class
# create a method that creates a pez dispenser with a group of flavors
	# put list of flavors in array and shuffle
# count # of pez remaining
	# calculate length of array
# take method
	# remove last pez
# add method which takes flavor as an argument
	# add the flavor to the end of the array


# INITAL SOLUTION

class Pez
  def initialize
    @pezDispenser = ['Assorted Fruit','Cherry','Chocolate','Cola','Grape','Lemon','Mango','Orange','Peppermint','Raspberry','Strawberry','Raspberry-Lemon','Strawberry-Vanilla'].shuffle
  end

  def count
    @count = @pezDispenser.length
  end

  def remove
    pezTaken = @pezDispenser.pop
    return pezTaken
  end

  def add(newPez)
    if @pezDispenser.length < 13
    	@pezDispenser << newPez
    else
    	print "Your Pez Dispenser is full!"
    end
  end
end


# DRIVER CODE

my_pez = Pez.new
p my_pez
p my_pez.count
my_pez.remove
p my_pez
my_pez.add("Grapefruit")
p my_pez


# REFACTOR





