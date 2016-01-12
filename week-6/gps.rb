# Your Names
# 1) Lydia Nash
# 2) Jon Schwartz

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

# define a method that takes two arguments
def serving_size_calc(item_to_make, num_of_ingredients)
  # create a hash containing items and # of ingredients needed  
  desserts = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # check to see if item is in library
  # error_counter = 3
  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     error_counter += -1
  #   end
  # end

  # if the item is not in the desserts hash, then return an error message 
  # if error_counter > 0
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless desserts.has_key?(item_to_make)
  # end

  # declare variable that equals the value (# of ingredients required) for the item
  required_ingredients = desserts.values_at(item_to_make)[0]
  
  # Raise an Argument Error if there aren't enough ingredients to make the item
  raise ArgumentError.new("Not enough ingredients to make #{item_to_make}") if num_of_ingredients < required_ingredients

  # calculate the leftover ingredients
  remaining_ingredients = num_of_ingredients % required_ingredients

  # returns how much of the item they can make based on the # of ingredients & what the leftovers could make
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / required_ingredients} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / required_ingredients} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
p serving_size_calc("pie", 10)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# I learned that variable names can be misleading. For example, the "serving size" variable wasn't actually a serving size, so it made the code hard to understand at first. 

# Did you learn any new methods? What did you learn about them?
# I learned how to implement the has_key method. 

# What did you learn about accessing data in hashes? 
# I learned that the has_key? method is really useful for accessing information in hashes. I also learned that there is a has_value? method while researching the has_key? method.

# What concepts were solidified when working through this challenge?
# My pair and I spent some time playing with the order of the raise argument line. we traded the order of the statement so the unless came first, but ultimately changed it back since it was a bit more streamlined. Our guide was helpful in explaining the different ways to order that line of code.


