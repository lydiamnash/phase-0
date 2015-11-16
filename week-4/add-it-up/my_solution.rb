# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: 
# Output: 
# Steps to solve the problem.



# 1. total initial solution




# 3. total refactored solution
def total(array)
sum = 0 
	array.each do |num|
	sum += num 
	end 
	return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of string variables
# Output: single string variable that is a composite of the array (first letter of first word should be capitalized)
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(string)
	sentence = ""
	string.each do |word|
		sentence += word.to_s + " "
	end
	return full_sentence(sentence)
end

def full_sentence(sentence)
	return sentence.capitalize.rstrip + "."
end







# 6. sentence_maker refactored solution