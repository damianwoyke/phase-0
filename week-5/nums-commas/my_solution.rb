# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

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


# 1. Initial Solution
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




# 3. Reflection