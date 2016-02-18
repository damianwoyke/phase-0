# Calculate the mode Pairing Challenge

# I worked on this challenge [Kevin Fowle help form Jon Norstrom]

# I spent [2.5] hours on this challenge.

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
# Which data structure did you and your pair decide to implement and why?
  #We decided to use a hash, we came to this conclusion because we needed to call the values by thier keys to help the iteration process.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  # I think that breaking this problem down was our strongest point, we knew what we need the code to do.

# What issues/successes did you run into when translating your pseudocode to code?
  # We had a really really hard time turing out pseudocode into actual code, We didn't come to the idea of using a has on our own, we had to look at quite a few outside sources and already solved problems to be able to write this. about 1.5 hours of this was pure research. I had left my books at home and wasn't able to read the chapters before hand, I think this is where we fell short.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  # We ran out of time and did not refactor using any available methods. If you're reviewing this and have a link to some data that might help or any input that would be great. I'm going to reasearch more this week, but part of me still feels lost at the moment.