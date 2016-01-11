
# Numbers to Commas Solo Challenge

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer

# What is the output? (i.e. What should the code return?)
# A comma-separate number as a string

# What are the steps needed to solve the problem?
# DEFINE method
# IF input is integer:
	# IF Integer is negative, return check message
	# ELSIF Integer is zero, return 0
	# ELSE
		# change to string
		# calculate the length of the string
		# determine the number of commas needed
		# split the string up
		# insert commas through iteration
		# join string
#ELSE: return check message


# 1. Initial Solution
=begin
def separate_comma(integer)

  if(integer.is_a?(Integer))
    
    if integer < 0
      print "Please enter a positive integer."
    elsif integer == 0
      print "0"
    else
      integer_string = integer.to_s
      integer_string_length = integer_string.length
      num_commas = (integer_string_length - 1)/3.floor
      integer_string_split = integer_string.split('')
      
      i = -4
      num_commas.times do
        integer_string_split.insert(i,',')
        i += -4
      end
      
      return integer_string_split.join('')
      
    end
  else
    print "Please enter an integer only"
  end

end
=end

# 2. Refactored Solution
def separate_comma(integer)

  if(integer.is_a?(Integer))
    
    if integer < 0
      print "Please enter a positive integer."
    elsif integer == 0
      print "0"
    else
      i_string = integer.to_s
      num_commas = (i_string.length - 1)/3.floor
      i_split = i_string.split('')
      
      i = -4
      num_commas.times do
        i_split.insert(i,',')
        i += -4
      end
      
      return i_split.join('')
      
    end
  else
    
    print "Please enter an integer only"
  
  end
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I wrote the steps that seemed clear to me first. So, I wrote the beginning and the end, then worked my way toward the "middle" of the problem.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, very helpful for thinking through the logic.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I had to refer to the information on the "insert" method in ruby docs. It took a few tried to get it right, but I got it eventually. I think there may be a way to simplify all my if/else statements, but I couldn't figure out how.

# How did you initially iterate through the data structure?
# I used the "times" method. It was sort of tricky figuring out the i value, but with some trial and error, I got it.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes, I cut out an unnecessary step and renamed some of my variables.  
