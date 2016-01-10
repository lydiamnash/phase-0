# Calculate the mode Pairing Challenge

# I worked on this challenge with Jeremy.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of numbers or strings

# What is the output? (i.e. What should the code return?)
# The output is an array of the most frequent value(s)

# What are the steps needed to solve the problem?
# Take the objects from the inputted array and turn them into the keys in an empty hash
# If an object is a duplicate, then add 1 to the key's value
# Create a new array
# Populate array with the keys with the highest value
# output the new array


# 1. Initial Solution

=begin
def mode1(array)
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1
  end
  mode_array = []
  counter.each do |y, z| 
    if z == counter.values.max
      mode_array << y
    end
  end
  return mode_array
end
=end




# 3. Refactored Solution

def mode(array)
  c = Hash.new(0)
  array.each do |x|
    c[x] += 1
  end
  m = []
  c.each do |y, z| 
    if z == c.values.max
      m << y
    end
  end
  return m
end

#p mode [1, 2, 1, "hello", "hello"]


# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
We decided to use a hash because we wanted to attach a "frequency" to each key.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes, the process of breaking down the pseudocode seemed clear to us.

What issues/successes did you run into when translating your pseudocode to code?
It took us a while to figure out the if statement. We ended up using the built-in methods value and max which was really helpful.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We didn't implement any new methods during the refactoring process. We thought there might have been a better one to use for the first couple lines of code, but couldn't figure it out!

=end


