###What does puts do?
  puts returns nil and then prints to the console on a new line

###What is an integer? What is a float?
  An integer is a full number such as 3,4,9,10. A float is a number with a decimal such as 2.1 & 3.1459.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  When doing division with an integer in ruby you will get an integer returned just as 3/2 should equal 1.5 ruby will respond with an answer of 1.5. If you take the same numbers and make them into floats like 3.0/2.0 you will get a float back equaling 1.5

#Release 2:

 ```
daily_hours = 24
days_a_year = 365
decade = 10
min_a_hour = 60

#hours in a year
hours_a_year = daily_hours * days_a_year
p hours_a_year

#min in a decade
hours_a_decade = hours_a_year*decade
min_a_decade = hours_a_decade*min_a_hour
p min_a_decade
```

# Reflection

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  Ruby hanles these things in a rather normal fashion, the only thing that is different than some other math applications is that it treats floats and intgers different. As mentioned in above questions.
###What is the difference between integers and floats?
  An integer is a full number such as 3,4,9,10. A float is a number with a decimal such as 2.1 & 3.1459.
###What is the difference between integer and float division?
  When doing division with an integer in ruby you will get an integer returned just as 3/2 should equal 1.5 ruby will respond with an answer of 1.5. If you take the same numbers and make them into floats like 3.0/2.0 you will get a float back equaling 1.5
###What are strings? Why and when would you use them?
  Strings are lines of text. You may need a program to return the string "Hello" is a user inputs the string "Hey!"
###What are local variables? Why and when would you use them?
  A local variable is a variable that you assign inside of the same file as when it's called. You use them to help define things such as the response "Hello" would be represented as response = "Hello".. response being the variable.
###How was this challenge? Did you get a good review of some of the basics?
  The challenge was a great refresher, I had to look up a few things, but each as more like a "Ohh Yeah I remember that now!". This was a great way to start the week.

  [Defining Variables](https://github.com/SeanMNorton/phase-0/blob/master/week-4/defining-variables.rb)
  [Simple String Methods](https://github.com/SeanMNorton/phase-0/blob/master/week-4/simple-string.rb)
  [Basic Math](https://github.com/SeanMNorton/phase-0/blob/master/week-4/basic-math.rb)