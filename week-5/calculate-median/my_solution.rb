# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# An array of numbers

# What is the output? (i.e. What should the code return?)
# returns the median value

# What are the steps needed to solve the problem?
# calculate the length of the array
# divide length of array by 2
# IF the length of the array is odd
	# SUBTRACT .5 to the length/2 and return that element
# ELSE
	#  SUBTRACT 1 from length/2
	# ADD the values of the two array positions and divide by two
	# return



# 1. Initial Solution
=begin
def median(array)
 array.sort!

  array_size = array.size
  half_array_size = array_size / 2
  
  if array_size % 2 == 1
    return array[half_array_size]
  else
    half_array_size_minus_one = half_array_size - 1    
    even_median = (array[half_array_size_minus_one] + array[half_array_size]) / 2.0
    return even_median
  end
  
end
=end

# 3. Refactored Solution

def median(array)
	array.sort!

	half_len = array.size / 2

	if array.size % 2 == 1
		return array[half_len]
	else
		half_len_minus_one = half_len - 1    
		return (array[half_len_minus_one] + array[half_len]) / 2.0
	end
  
end

