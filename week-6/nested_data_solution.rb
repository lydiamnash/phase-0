# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, 35]
number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |var|
  if var.is_a?(Integer)
  	var += 5
  else
  	var.map! { |var2| var2 += 5}
  end
end
p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |var|
  if var.is_a?(String)
	var += "ly"
  else
  	var.map! do |var2|
	  if var2.is_a?(String)
	  	var2 += "ly"
	  else
	  	var2.map! do |var3|
	  	  var3 +="ly"
  		end
  	  end
  	end
  end
end
p startup_names


# REFLECT
# What are some general rules you can apply to nested arrays?
# Nested arrays generally function the same way. Accessing them follows a similar format of referring to the position of the indexed position, but must be done multiple times.

# What are some ways you can iterate over nested arrays?
# You can iterate over nested arrays by using if statements to identify what class the element is and then run code accordingly.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We implemented the .map! method which was destructive and overwrote the array in the iteration exercise. We had both used this before, but it helped solidify our knowledge of when to use it.

