# Factorial

# I worked on this challenge with Joseph Scott.


# Your Solution Below
def factorial(integer)
	temp = integer
	if temp == 0
		return 1
	else
		while temp > 1
			temp-= 1
			integer*=temp
		end
		return integer
	end
end	



