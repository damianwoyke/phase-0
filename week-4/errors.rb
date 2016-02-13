# Analyze the Errors

# I worked on this challenge [by myself,].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------
=begin
cartmans_phrase = "Screw you guys " + "I'm going home."
=end

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
#   171
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# expecting end-of-input
# 5. Where is the error in the code?
#  It says it is on the last line of the code.
# 6. Why did the interpreter give you this error?
#   The def and while both need an end. There is only one.

# --- error -------------------------------------------------------

def south_park
end

# 1. What is the line number where the error occurs?
#37
# 2. What is the type of error message?
# name error
# 3. What additional information does the interpreter provide about this type of error?
#it lets us know that "south_park" is undefined
# 4. Where is the error in the code?
# entire line 37
# 5. Why did the interpreter give you this error?
# "south_park" needs to be defined as a variable or method.

# --- error -------------------------------------------------------

 def cartman()
 end

# 1. What is the line number where the error occurs?
#53
# 2. What is the type of error message?
#No Method Error
# 3. What additional information does the interpreter provide about this type of error?
#undefined method 'cartman'
# 4. Where is the error in the code?
#all of line 53
# 5. Why did the interpreter give you this error?
#the method of carman() needs to be defined and have and end.
# --- error -------------------------------------------------------
=begin

def cartmans_phrase(phrase)
 puts phrase
end
cartmans_phrase("I'm not fat; I'm big-boned!")
cartmans_phrase('I hate Kyle')

=end

# 1. What is the line number where the error occurs?
# 68 and 72
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# line 72 where we have an argument.
# 5. Why did the interpreter give you this error?
# cartmans_phrase method is not asking for any arguments yet on line 72 we are providing one.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate you!")

# 1. What is the line number where the error occurs?
# 90 and 94
# 2. What is the type of error message?
#Argumetn Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of Arguments (0 for 1)
# 4. Where is the error in the code?
# line 94 where we do not provide and argument
# 5. Why did the interpreter give you this error?
# on line 94 cartman_says is never given an offesive_message.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', "Kyle")

# 1. What is the line number where the error occurs?
#111 and 115
# 2. What is the type of error message?
#Arguments Erros
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of args (1 for 2)
# 4. Where is the error in the code?
# line 115 we need provide a name argument so cartman can shout lies at them
# 5. Why did the interpreter give you this error?
# There is only one argument in the methods that requires 2

# --- error -------------------------------------------------------
=begin
puts "Respect my authoritay!" * 5
=end

# 1. What is the line number where the error occurs?
# 130
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 5 * should be on the other side of the string
# 5. Why did the interpreter give you this error?
# right now were are multiplying "5 * string" instead we want the "string times 5" but this would only be said in cartmans brain, I think he wants to say it 5 times so we should add puts to it.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#146
# 2. What is the type of error message?
#Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# we divided 20 by 0
# 5. Why did the interpreter give you this error?
# you cant divide by zero and we tried to.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#162
# 2. What is the type of error message?
#load error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file
# 4. Where is the error in the code?
#incorrect file name after require_relative
# 5. Why did the interpreter give you this error?
# this file does not exist on my computer.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
   I think the hardest error was the 5 * 'String' because I for qite a bit did not see the number 5 before the astrix, so I really didn't know what was going on.
How did you figure out what the issue with the error was?
  I eventually saw the bright blue number sitting next to the astrix and realized I couldn't multiply 5 * string
Were you able to determine why each error message happened based on the code?
  Yes, the messages helped direct me to where in the code and why each thing was breaking
When you encounter errors in your future code, what process will you follow to help you debug?
 Read the error message first and work from there, find which line and then what type of error and then look the rest of the message if needed.

=end