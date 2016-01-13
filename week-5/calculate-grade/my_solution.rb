# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input?
# An array of numbers between 0 and 100

# What is the output? (i.e. What should the code return?)
# a letter grade in string format

# What are the steps needed to solve the problem?

# define method that takes an array
# check to make sure each value in the array is between 0 and 100
# if the array has values between 0 and 100, then create a var that is the lenth of the array
# create a var that sums all the elements in an array
# calculate the average
# if the average grade is greater than or equal to 90, return A
# elsif the average grade is greater than or equal to 80, return B
# elsif the average grade is greater than or equal to 70, return C
# elsif the average grade is greater than or equal to 60, return D
# else return F

# 1. Initial Solution
=begin
def get_grade(array)
  array.each {|x| raise ArgumentError.new("All grades should be between 0 and 100") if x < 0 || x > 100 }
  
  average = array.inject {|sum, n| sum + n} / array.length
  
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else 
    return "F"
  end

end
=end

# 3. Refactored Solution
def get_grade(array)
  array.each {|x| raise ArgumentError.new("All grades should be between 0 and 100") if x < 0 || x > 100 }
  
  average = array.inject {|sum, n| sum + n} / array.length
  
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else 
    return "F"
  end

end

