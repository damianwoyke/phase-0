# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: ].
# I spent [#] hours on this challenge.

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
      raise ArgumentError.new("Needs number") if number.to_s.length != 16
  end
  def check_card
    @new_array = @number.to_s.split(//)
    @new_array.map!.with_index do |num, index|
      if index % 2 == 0
        num.to_i * 2
      else
        num.to_i
      end
      end
      @new_array = @new_array.join('').split(//)
      @new_array.map! do |num|
         num.to_i
       end
      if @new_array.inject {|sum,i| sum+i} % 10 == 0
         true
      else
        false
      end
  end
end

card = CreditCard.new(4408041234567901)
p card.check_card


# Refactored Solution

class CreditCard
  def initialize(number)
      @number = number
      raise ArgumentError.new("Needs number") if number.to_s.length != 16
  end

  def check_card
    @number = @number.to_s.split(//)
    @number.map!.with_index do |num, index|
      index % 2 == 0 ? num.to_i * 2 : num.to_i
    end

    @number = @number.join('').split(//)
    @number.map!{|num| num.to_i}
    @number.inject {|sum,i| sum+i} % 10 == 0 ? true : false
  end
end

card = CreditCard.new(4408041234567901)
p card.check_card






# Reflection
