=begin
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash
  # captures the items, split the string into multiple strings delimited by a space
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] VISIT THIS AT THE END
# output: hash with the item name and the default value 1

# Method to add an item to a list
# input: item name and optional quantity (enters default value if not given)
# steps:
  # Get item name and optional quantity from user
  # run the check method
  # Add the new item and quantity to the original hash
# output: updated hash with new data
#def add_item(list, item, quantity=1)
 # list = 
#end


# Method to remove an item from the list
# input: item with default value of 1 [Stretch goal: remove either all of an item or a specific value/number]
# steps:
  # get item name and optional quantity from user
  # run the check method
  # remove item from list
# output: updated grocery list hash
  
# Method to update the quantity of an item
# input: item name and the additional amount of the item you want on the list in integer form
# steps:
  # get item name and additional quantity of item
  # run the check method
# output: updated grocery list hash

# Method to print a list and make it look pretty
# input: grocery list hash
# steps: 
  # print [stretch goal: alphabetize the list]
# output: two column list with items on the left and quantity on the right

=end

new_list = Hash.new

def new_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item) if list[item]
end

def update_item(list, item, quantity)
  list[item] = quantity if list[item]
end

def print_list(list)
  puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{quantity} #{item.capitalize}"
  end
end

my_list = new_list
new_item(my_list, "lemonade", 2)
new_item(my_list, "tomatoes", 3)
new_item(my_list, "onions", 1)
new_item(my_list, "ice cream", 4)
remove_item(my_list, "lemonade")
update_item(my_list, "ice cream", 1)
print_list(my_list)


# 5. Reflection

=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode is most helpful when it is detailed, but not overly detailed.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We decided to go with a hash because we knew we would want to be able to capture the number of items (or keys) that we wanted to get at the store.

What does a method return?
A method returns the last value within it.

What kind of things can you pass into methods as arguments?
anything - hashes, arrays, numbers, strings.

How can you pass information between methods?
By putting the information in parenthesis, separated by commas.

What concepts were solidified in this challenge, and what concepts are still confusing?
This challenge was difficult for my pair and me. We were able to think through the logic, but had issues with the syntax which made me realize I need to spend more time reviewing hashes!

=end


