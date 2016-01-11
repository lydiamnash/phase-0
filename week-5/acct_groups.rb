# ACCOUNTABILITY GROUPS

# 1. PSEUDOCODE
# INPUT: List of names (array)
# OUTPUT: Groups with names, ideally 4-5, no less than 3

# COUNT the number of people in the list
# DIVIDE by 4, check remainder
# IF remainder is 1-2
	# add those names to the accountability groups 1 and 2
# ELSE (if remainder is equal to 0 or 3), nothing
# PRINT the groups



# 2. INITIAL SOLUTION
=begin
fiddler_crabs = ["Amy", "Bob", "Cecilia", "David", "Emily", "Fred", "Greg", "Hector", "Ignacio", "Jesus", "Kramer", "Lydia", "Monique", "Nancy", "Oprah", "Petra"]

def acct_groups(array)
  group = []
  group = array.shuffle.each_slice(4).to_a
  check = group.last.length
  print group
  
  if check == 1
    zeroth = group[0]
    zeroth.push(*group.last)
    group.pop
  
  elsif check == 2
    zeroth = group[0]
    first = group[1]
    
    zeroth.push(*group.last.first)
    first.push(*group.last.last)
    
    group.pop
    
  else

  end
    print group
    puts "All your accountability groups have at least 3 people and no more than 5!"
  
end

acct_groups(fiddler_crabs)
=end

# 4. REFACTOR

fiddler_crabs = ["Amy", "Bob", "Cecilia", "David", "Emily", "Fred", "Greg", "Hector", "Ignacio", "Jesus", "Kramer", "Lydia", "Monique", "Nancy", "Oprah", "Petra"]

def acct_groups(array)
  group = array.shuffle.each_slice(4).to_a
  check = group.last.length
  
  if check == 1
    group[0].push(*group.last)
    group.pop
  
  elsif check == 2
    group[0].push(*group.last.first)
    group[1].push(*group.last.last)
    group.pop
    
  else

  end
    
  print group
  puts "All your accountability groups have at least 3 people and no more than 5!"
  
end

acct_groups(fiddler_crabs)



# 6. REFLECT
=begin
What was the most interesting and most difficult part of this challenge?
The most interesting part was thinking through the logic. I think I could have used iteration in the challenge, but I couldn't get it to work, so I stuck with a more verbose answer.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, every challenge, writing the pseudocode gets a little easier.

Was your approach for automating this task a good solution? What could have made it even better?
I think I could have used iteration to make it a little better. My approach was to cut the groups into 4, knowing that some would have people added, and some would have a group of 3. 

What data structure did you decide to store the accountability groups in and why?
I chose arrays because it was a list of people. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned about using the asterisk for the push method. I condensed the code a bit, but I'm not sure if it's as readable anymore. So, sometimes condensing and readability can be tradeoffs.

=end