# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number of sides on die
# Output: the number of sides or a random number from given sides
# Steps: Initialize Die class including methods .sides and .roll
#sides outputs the number of sides on the die
#roll will give you a random number from 1..sides



# 1. Initial Solution

class Die
  def initialize(sides)
    if sides >= 2
      @sides = sides
    else
      raise ArgumentError, "Needs more sides!"
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides >= 2; @sides = sides
    else; raise ArgumentError, "Needs more sides!"
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end





# 4. Reflection

# What is an ArgumentError and why would you use one?
  # You would need to use this, incase the argument was not something that would work. In this case, IF there weren't two or more sides then the die can't be rolled.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# ArgumentError was new, this worked just fine for me.

# What is a Ruby class?
  # According to what I read on tutorialspoint.com A class is the blueprint from which objects are created

# Why would you use a Ruby class?
  # You would use a class to create your own rules, from what I've seen, it can also improve how readable the code is. Classes can be useful when you use code that gets repeated, If you want to find the size of a flower you can create an class method inside the class the finds the size using .size on a variable. instead of re-writting that code each time you can call this.

# What is the difference between a local variable and an instance variable?
  # local variable can only be used in the method that it is defined. and instance variable can only be referenced within class methods.
# Where can an instance variable be used?
 # they can be used in any method of the class they are defined in.