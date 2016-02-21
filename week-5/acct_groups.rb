# Create a method that takes a number(people) and then separtes it into groups of 3-5.
#pseudocode
#create a method that takes the number of people as an argument
# add the list of people (1 through the number of people) to an array
# slice the array into groups of 3,4 or 5 and then put it back into an array
#print array

def ppl_array(maxnum)
  all_people = (1..maxnum).to_a.shuffle
end

def group(array)
  if array.length % 3 == 0
    array.each_slice(3).map { |group| group }
  elsif array.length % 5 == 0
    array.each_slice(5).map { |group| group }
  else
   array.each_slice(4).map { |group| group }
  end
end

def print_array(array)
  p "Here's a more organized view:"
  num = 1
  for i in array
    p "Group #{num} consists of: #{i}."
    num += 1
  end
end
# this will print the array that consists of all of the groups
# then print a more organized view with each group & number on a new line.
p group(ppl_array(57))
print_array(group(ppl_array(57)))

# What was the most interesting and most difficult part of this challenge?
  # Figuring out the slice and map was the most interesting thing, I remembered using it in the commas refactored code but I still had to look it up.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #I do feel like my pseudocode is improving, this week i've found it to be really important.

# Was your approach for automating this task a good solution? What could have made it even better?
  # I feel like what I have is a pretty good solution, possibly finding a better way to decide how it gets grouped, maybe slicing into groups of 4 no matter what and then if there are extras adding them to existing groups, not sure how I'd do this.

# What data structure did you decide to store the accountability groups in and why?
  # I chose an array, I find these eaiser to work with, and I didn't need to acess specific keys though I could assign group numbers to the key values in a hash... making it easier to call a specific group.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
 # I kind of went straight for a refactored solution, I learned little about slice map and shuffle.
