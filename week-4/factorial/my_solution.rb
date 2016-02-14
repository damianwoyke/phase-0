# Factorial

# I worked on this challenge [with: Adam Pinsky].


# Your Solution Below
def factorial(number)
  base = 1
  answer = 1
  while base <= number do
 answer = answer * base
 base += 1
end
return answer
end
