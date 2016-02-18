# Pad an Array

# I worked on this challenge [Wesley El-Amin]

# I spent [2] hours on this challenge.


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
# Were you successful in breaking the problem down into small steps?
  #Yes, my pair and I were able to take the challenge break it down into steps fairly quickly.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #Taking the pseudocode and translating it into Ruby went pretty smooth. We orignially had some issues with taking the min_size and subtracting the array.size because we wrote it backwards, but that was a pretty quick fix once we read through the code again.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  #for the destructive version our code ran almost perfect execpt what I mentioned above, though in our non-destructive code, multiplying the added value by the difference didn't work as expected. We found a different solution to the problem but still aren't sure why one worked in one set of code and other didn't.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
  #We found a .fill method that worked perfectly it took just a second to figure out how to use it but after talking it through we figured you could add the value to place holders after the last in the array and up to the min_size.

# How readable is your solution? Did you and your pair choose descriptive variable names?
  #We did a good job on readablilty, I think the refactored version is a little easier to read, but that is only because there are less variables to look at.

# What is the difference between destructive and non-destructive methods in your own words?
  # Destructive methods change the original numbers or strings like in this case the array was actually changed, while in non-destructive the orginial data stays the same while the output is assigned to a different variable.
