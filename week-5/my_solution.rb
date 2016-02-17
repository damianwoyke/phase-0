# Calculate the mode Pairing Challenge

# I worked on this challenge [Kevin Fowle help form Jon Norstrom]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? list of numbers that we want to find the mode.
# What is the output? (i.e. What should the code return?) The most used number or string(mode) in list/input
# What are the steps needed to solve the problem?

#Define mode method set argument
#iterate the list
# if value in list is == to another value
#put value into array.



# 1. Initial Solution
def mode(array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end

  mode_array = []
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end

  end
  mode_array.sort
end


# 3. Refactored Solution
  #same as above#


# 4. Reflection