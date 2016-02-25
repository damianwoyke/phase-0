# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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








# Reflection
