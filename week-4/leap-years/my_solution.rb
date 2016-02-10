
# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(y)
  if (y % 4 ==0 && y % 100 != 0) || y % 400 ==0
    return true
  else
    false
end
 end