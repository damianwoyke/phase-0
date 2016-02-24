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
    end


end

card = CreditCard.new(4408041234567901)
p card.check_card


# Refactored Solution
  #def check_card
    # valid = new.Array
    # valid << @number.split(//)
#end





# Reflection