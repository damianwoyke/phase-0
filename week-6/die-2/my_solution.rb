# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: string for vlaues on die
# Output: number of sides based on number of strings in array & random string in array.
# Steps: raise error if sides(labels.length) is less than 1
#define sides
#sample from array when rolling

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.length > 0
        @sides = labels.length
      else
        raise ArgumentError, "Needs more sides!"
    end
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    if labels.length > 0
        @sides = labels.length
      else
        raise ArgumentError, "Needs more sides!"
    end
  end
  def sides; @sides ; end
  def roll; @labels.sample ; end
end







# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# It was almost the exact same, instead of rand I had to use sample, since it was choosing from an array.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# well written easy to read code can be changed eaisly for different similar uses.
# What new methods did you learn when working on this challenge, if any?
# no new methods.

# What concepts about classes were you able to solidify in this challenge?
# instance variables
