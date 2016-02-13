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


