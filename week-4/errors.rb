# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file name is errors.rb.
# 2. What is the line number where the error occurs?
# 174
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input
# 5. Where is the error in the code?
#  At the bottom of the errors.rb file.
# 6. Why did the interpreter give you this error?
#  Because there is no "end" for the cartman_hates method on line 13. Added it above.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 36.
# 2. What is the type of error message?
#  in <main>
# 3. What additional information does the interpreter provide about this type of error?
#  undefined local variable or method "south_park"
# 4. Where is the error in the code?
# The error is on the whole line of code on line 36. It's unclear what this line is trying to do -- is it a variable, a method?
# 5. Why did the interpreter give you this error?
# We're trying to reference something that hasn't been defined in this file. 

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 51.
# 2. What is the type of error message?
# in <main>
# 3. What additional information does the interpreter provide about this type of error?
# undefined method
# 4. Where is the error in the code?
# The error is on the entire line... the method hasn't been defined in this file yet.
# 5. Why did the interpreter give you this error?
# It gave us this error because this method has no definition.

# --- error -------------------------------------------------------

# def cartmans_phrase()
#  puts "I'm not fat; I'm big-boned!"
# end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 66
# 2. What is the type of error message?
# wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# (Argument Error)
# 4. Where is the error in the code?
# The error is on line 66 right after the "cartmans_phrase" text
# 5. Why did the interpreter give you this error?
# There should be parenthesis after "cartmans_phrase." Added.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# Line 89
# 2. What is the type of error message?
# wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# Argument Error
# 4. Where is the error in the code?
#  the error is when the method is called. It needs an argument added.
# 5. Why did the interpreter give you this error?
# We received this error message because there was no argument passed through the method, but it requires one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#Line 106
# 2. What is the type of error message?
# Wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# Argument Error
# 4. Where is the error in the code?
# Within the cartmans_lie argument.
# 5. Why did the interpreter give you this error?
# There are supposed to be two arguments, but only one argument passes.

# --- error -------------------------------------------------------

#{}"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# String can't be coearced into Fixnum 
# 3. What additional information does the interpreter provide about this type of error?
# (TypeError)
# 4. Where is the error in the code?
# The entire line
# 5. Why did the interpreter give you this error?
# Wrong order. The only way to 'multiply' these together is to trade the order. Adjusted above.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# dividing by 0
# 3. What additional information does the interpreter provide about this type of error?
#  ZeroDivisonError
# 4. Where is the error in the code?
# The error is in the part where 20 is trying to be divided by 0
# 5. Why did the interpreter give you this error?
# you can't divide by 0. 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
#cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#LoadError
# 4. Where is the error in the code?
# The file name
# 5. Why did the interpreter give you this error?
# That file doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#

#Which error was the most difficult to read?

#At firs,t I didn't understand the laod error, but once I realized that the file name looked funny, I understood what it meant.

#How did you figure out what the issue with the error was?

# Like I said above, I realized that the file just didn't exist so I did some backward induction to figure it out

#Were you able to determine why each error message happened based on the code? 
# Yes, I thought that part was pretty straightforward (except for the last one!)

#When you encounter errors in your future code, what process will you follow to help you debug?
# File name, line number, information given then debug. Google if needed!



