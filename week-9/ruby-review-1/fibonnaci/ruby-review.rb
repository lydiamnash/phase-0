# Fibonnaci Number Checker

# PSEUDOCODE

# create method that takes a number as an argument
# create an array equal to the first two digits on the fib sequ
# until the last number in the array is equal to or greater than the number to be checked
 # add last two nums in array and push new number to array
# check to see whether last num in array is equal to number and return


# INITAL SOLUTION
def fib_check(number)
  fib = [0,1]
  
  until fib.last >= number
    fib << fib[-1] + fib[-2]
  end
  
  return fib.last == number
end

# REFACTOR - refactored as I went




