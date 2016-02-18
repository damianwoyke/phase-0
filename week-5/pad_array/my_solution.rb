# Pad an Array

# I worked on this challenge []

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array - postitive intgs with optional object
# What is the output? An array whose lenght is = second input value (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#Destructive method:
  #set a condition where the second input value must be greater than 0.
  #Then determine the length of the array that has been input.
  #subtract the lenght of the array from the min value
  #if that difference is > 0 add that number of optional objects to the end of the original array.
  #if an optional object has not been defined add nil as many times as the difference requires.
  #Finally return the modified array.

#Non Destructive:
  #Set a condition where the second input value must be greater than 0.
  # Create a new array.
  #Concatenate the original array into new_array
  #Then determine the length of the array that has been input.
  #subtract the lenght of the array from the min value
  #if difference is >0 add that # of optional objects to the end of the new_array.
  #if an optional object has not been defined add nil as many times as the difference requires.
  # Finally return the new array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive

  if min_size > 0
    size = array.size
    dif = min_size - size
    if dif > 0
      array.push(value)*dif
      return array
    else
      return array
    end
  else
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.concat(array)
  if min_size > 0
    size = array.size
    dif = min_size - size
    if dif > 0
        for i in 1..dif
          new_array.push(value)
        end
        return new_array
      else
        return new_array
      end
    else
      return new_array
    end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
array_new = Array.new.concat(array)
array_new.fill(value, array.length...min_size)
end



# 4. Reflection