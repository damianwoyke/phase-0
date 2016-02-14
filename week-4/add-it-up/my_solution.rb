# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with:Adam Pinsky ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers: 1,2,3
# Output: sum of numbers in given array: 6
# Steps to solve the problem.
# define method & array
# take each in array and add it to total


# 1. total initial solution
=begin

def total(array_1)
  sum = 0
  array_1.each do |number|
    sum = sum + number
end
return sum
end

=end

# 3. total refactored solution

def total(array_1)
sum = 0
array_1.each { |i| sum +=i }
return sum
end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: one large string called sentence
# Steps to solve the problem.
# def sentence method
# take each from array add it to string


# 5. sentence_maker initial solution
=begin
def sentence_maker(array_2)
  sentence =  array_2[0].capitalize
  index = 1
  while index < array_2.length do
    sentence = sentence + " " + array_2[index].to_s
    index += 1
  end
  return sentence + "."
end
=end


# 6. sentence_maker refactored solution
def sentence_maker(array_2)
  return array_2.join(' ').capitalize + "."
end