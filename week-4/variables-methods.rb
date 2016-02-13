puts "Hey what's  your first name?"
first_name = gets.chomp.capitalize
puts "Middle?"
middle_name = gets.chomp.capitalize
puts "How about your last name?"
last_name = gets.chomp.capitalize
puts''
puts "Nice to meet you " + first_name +' ' + middle_name + ' ' + last_name + "."



puts "What's your favorite number?"
number = gets.chomp.to_i
puts (number + 1).to_s + ", This number is better really..."

=begin
How do you define a local variable?
 you set a variable = to something inside a block of code.
 like x = scones

How do you define a method?
  def method_name every method also need and end.

What is the difference between a local variable and a method?
  a variable is a specific thing like a string or number, while a method takes input and returns output.

How do you run a ruby program from the command line?
  you type "ruby rubyfile_name.rb" and it will run

How do you run an RSpec file from the command line?
  You type "rspec rspec_file_name.rb" this will run the file as RSpec

What was confusing about this material? What made sense?
  I wasn't confused by much, this was mostly review, since I worked through chris pines book before starting.

=end

