# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an argument to the separate_comma method which will be an int
# What is the output? (i.e. What should the code return?) it should return a comma every three decimal places if there are 4 or more but if the number of values can be / 3 evenly there shouldn't be a comma in the front... I think.

# What are the steps needed to solve the problem?
#define separate_comma
#convert int to string
#insert a comma every 3rd value (length-3) for strings with 4 or more values.
#return string with comma


1. Initial Solution
def separate_comma(num)
  num_string = num.to_s

  if num_string.length >= 4
      x = num_string.length

      while x > 3
        x -= 3
        num_string.insert(x,',')
      end ; return num_string

    else
      return num_string
    end
  end

# 2. Refactored Solution
## Take argument number change it to a string, then take that strings characters and set it to an array, this way you can iterate using .each_slice. reverse the array so the commas fall in the correct place from left to right. slice it into threes, map then joins the slices of 3, then join the slices with a "," and reverse it back.

def separate_comma(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
  #I had to think about a few different ways that I could solve the same problem. My first go to was to think of how and when numbers use commas and find any pattern. Then how to get the patter to work. At first I thought of a similar way that my refactored solution ended up being, but I couldn't figure out how to write that without using ruby docs. So I had to re-think and it turned out being more simple to understand solution in my opinion.

# Was your pseudocode effective in helping you build a successful initial solution?
 #pseudocode was my saviour, I think I spent a moajority of my time working on the pseudocode. And after doing that for this challenge, I'd like to spend more time on it in future challenges.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#My entire refactored solution was pretty much filled with new ruby methods. I have a pretty good decription as to what each things is doing right above my code. I had most of this down, I just didn't know that I needed .map or how it worked orignially, but after lookin up the solution I found .map and read up on it a little.

# How did you initially iterate through the data structure?
  # I iterated through the lenght of the number and added a comma every three places by assigning a variable to the length and then subtracting three, as long as variable was > 3 it would keep going, this insured that no commas would be added to the begining of a number like ,100,000.

# Do you feel your refactored solution is more readable than your initial solution? Why?
  # I think that if you know that the ruby methods do then yes it is eaiser to read, it's all in one line and you don't have to look out and around for where variables were assigned and things of that nature. Though I think for a beginer that my initial solution would be eaiser to figure out what is going on.