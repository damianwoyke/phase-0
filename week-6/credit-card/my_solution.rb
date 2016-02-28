# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [with: Tom Sok ].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: check if number is true
# Step 1: take in original number
# Step 2: double every other number from last  - first
# Step 3: Break double digits apart and add the integers together
# Step 4:
# Step 5: Profit

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new('Needs number') if number.to_s.length != 16
  end

  def check_card
    @new_array = @number.to_s.split(//)
    @new_array.map!.with_index do |num, index|
      if index.even?
        num.to_i * 2
      else
        num.to_i
      end
    end
    @new_array = @new_array.join('').split(//)
    @new_array.map!(&:to_i) #@new_array.map!{|x| x.to_i}
    if @new_array.inject { |sum, i| sum + i } % 10 == 0
      true
    else
      false
    end
  end
end

card = CreditCard.new(4_408_041_234_567_901)
p card.check_card

# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Needs 16 digit number") if number.to_s.length != 16
  end

  def check_card
    double_every_other
    split_greater_than_ten
    sum_numbers
    check_if_mod_ten
  end

private
  def double_every_other
    @number = @number.to_s.split(//)
    @number.map!.with_index do |num, index|
      index % 2 == 0 ? num.to_i * 2 : num.to_i
    end
  end

  def split_greater_than_ten
    @number = @number.join('').split(//).map(&:to_i)
  end

  def sum_numbers
    @number = @number.inject(:+)
  end

  def check_if_mod_ten
    @number % 10 == 0
  end

end

card = CreditCard.new(4408041234567901)
p card.check_card

card = CreditCard.new(4408041234567901)
p card.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?
  # I think we were origanly overthinking things, It took us an hour and a half just to get the first section of check_card done. I think we were overthinking things, and our argument error wasn't working right when we ran ruby but did in rspec, so we were having a hard time with testing.

# What new methods did you find to help you when you refactored?
  # we found ? to come in handy, this helped shorten the if statments to one line. as well as &: to shorten {|x| x.method}

# What concepts or learnings were you able to solidify in this challenge?
  # I was able to solidify iterating through arrays and methods such as .split and join.
