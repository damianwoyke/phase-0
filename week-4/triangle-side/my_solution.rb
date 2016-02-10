# I worked on this challenge [with:Eric Gumerlock].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
    return false
  elsif a+b >= c && a+c >= b && c+b >= a
    return true
  else false
  end
end