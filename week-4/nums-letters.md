###What does puts do?
  --puts returns nil and then prints to the console on a new line

###What is an integer? What is a float?
  --And integer is a full number such as 3,4,9,10 and then the float is a number with a decimal such as 2.1 & 3.1459.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  --When doing division with an integer in ruby you will get an integer returned just as 3/2 should equal 1.5 ruby will respond with an answer of 1.5. If you take the same numbers and make them into floats like 3.0/2.0 you will get a float back equaling 1.5

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