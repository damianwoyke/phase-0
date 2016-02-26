#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


class NameData
  attr_reader :name
  def initialize
    @name = "Sean Norton"
  end
end

class Greetings
  def initialize
    @name = NameData.new.booty
  end

  def hello
    puts "Hello, #{@name}! How wonderful to see you today."
  end
end
greet = Greetings.new
greet.hello

# Reflection
# ----- Release 1 -----
# What are these methods doing?
  # The methods are defining the instance variables and then allowing the user to change the instance variables by calling the change method.

# How are they modifying or returning the value of instance variables?
  # They are changing the value through a method and assigning the instance variable to the argument given.

#  ----- Release 2 -----
# What changed between the last release and this release?
  # they added an attr_reader for age
# What was replaced?
  #they didn't have to call the what_is_age method anymore they could just call age
# Is this code simpler than the last?
  # yes.
#
# ----- Release 3 ----
# What changed between the last release and this release?
  # an attr_writter was added
# What was replaced?
  # change_my_age was replaced, it's not needed since now you can write the age variable
# Is this code simpler than the last?
  # yes
# ----- Release 6 ----
# What is a reader method?
  # The reader method allows the attribute to be seen but not re-written
# What is a writer method?
  # This allows you to change the value of the variable but not see the current value
# What do the attr methods do for you?
  # let us use the instance variables through out other classes
# Should you always use an accessor to cover your bases? Why or why not?
  # not always, there might be some things that you dont wan't seen but to change and vise versa.
# What is confusing to you about these methods?
  #calling them is still a little confusing and initializing but I think after a few more times ill get the hang of it.
