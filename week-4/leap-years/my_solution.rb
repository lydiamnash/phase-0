# Leap Years

# I worked on this challenge Joseph Scott.

# Your Solution Below

def leap_year? year
	if leap_calc(year)
		return true
	else
		return false
	end
end

def leap_calc(year)
	(year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end	
